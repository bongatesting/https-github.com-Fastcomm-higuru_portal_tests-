require 'net/pop'
require 'time'

module EmailHelpers

  email_passwords =
      {
          '10.forge.passie@gmail.com' => 'EyeTime1@3'
      }

  pop_host = 'pop.gmail.com'
  pop_port = 995

  recieve_timeout = 60 # If email is not found, retry until X seconds passed
  retry_throttle = 5 # If email is not found, try again after waiting X seconds
  no_older_than = 30 # Consider only emails no older than X seconds

  def get_and_delete_mail(email, expected_subject_words)

    start_time = Time.now
    mail = nil

    while mail == nil && Time.now - start_time < recieve_timeout do
      mail = find_and_delete_in_mailbox(email, expected_subject_words)

      if mail == nil
        sleep(retry_throttle)
      end
    end

    if mail == nil
      raise '** Expected mail was not recieved in ' + recieve_timeout.to_s + ' seconds **'
    end

    return mail
  end

  private

  def find_and_delete_in_mailbox(email, expected_subject_words)
    password = email_passwords[email]
    Net::POP3.enable_ssl(OpenSSL::SSL::VERIFY_NONE)
    mail = nil

    Net::POP3.start(pop_host, pop_port, email, password) do |conn|

      conn.mails.each do |msg|
        if message_meets_conditions?(msg, expected_subject_words)
          mail = msg.pop();
          msg.delete;
          break
        end
      end

    end

    return mail
  end

  def message_meets_conditions?(msg, expected_subject_words)
    header_lines = msg.header.split("\r\n")
    subject = header_lines.select { |line| line.start_with?('Subject') }.first
    recieved_date = header_lines.select { |line| line.start_with?('Date') }.first
    recieved_date = Time.parse(recieved_date[6..recieved_date.length])

    recieved_recently = (Time.now - recieved_date) < no_older_than
    includes_words = expected_subject_words.all? { |word| subject.include?(word) }

    return recieved_recently && includes_words
  end

end