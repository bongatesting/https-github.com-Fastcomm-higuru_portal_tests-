module PortalStates
  def set_portal_logged_in_state
    log_in 'pan@gmail.com'
  end

  portal_account_passwords =
    {
      'po.eyetime@gmail.com' => 'password',
      'pan@gmail.com' => 'testing123',
      '03.channeli.createi@gmail.com' => 'EyeTime1@3',
      '11.changierd.paswordierd@gmail.com' => 'EyeTime1@3',
      '07.createli.posteli@gmail.com' => 'EyeTime1@3',
      '09.createli.commenteli@gmail.com' => 'EyeTime1@3',
      '12.createli.themeli@gmail.com' => 'EyeTime1@3',
      '13.ladymineli.chaneli@gmail.com' => 'EyeTime1@3',
      'sharingeli.chaneli@gmail.com' => 'EyeTime1@3',
      'linkmerchant03+notifications@gmail.com' => 'Link@123',
      'linkmerchant03+channel_update@gmail.com' => 'Link@123',
      'nathan.notifitioneli@gmail.com' => 'EyeTime1@3',
      'linkmerchant03+csv_invite@gmail.com' => 'Link@123'
    }.freeze

  def log_in(email)
    try_log_in email

    ReleaseModalPage.close if ReleaseModalPage.is_visible
    IntroPage.continue if IntroPage.is_visible

    wait_for_portal(home_page_header_sign_out_button)
  end

  def try_log_in(email, password = nil)
    go_to_homepage

    password = portal_account_passwords[email] if password.nil?
    submit_sign_in_form(email, password)
  end

  private

  def submit_sign_in_form(email, password)
    landing_page_email_address_field.send_text(email)
    landing_page_password_field.send_text(password)

    landing_page_sign_in_button.tap_element
    wait_for_ajax_portal
  end
end
