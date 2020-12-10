require 'pathname'

module CsvHelpers
  def upload_csv_portal
    if @registration_number.nil?
      get_unique_number_from_registration_file
    end

    current_registration_number = @registration_number - 1

    CSV.open(Dir.pwd + "/../../global_history/valid_user_invite.csv", "wb") do |row| ## Set unique display name
      csv_data = ["27620625841" + current_registration_number.to_s]
      row << csv_data
    end    

    path_to_csv = Dir.pwd + '/../../global_history/' + 'valid_user_invite.csv'
    path_to_csv = Pathname.new(path_to_csv).cleanpath
    $web_driver.find_element(:id, "uploadBox").send_keys(path_to_csv.to_s)
  end
end