# frozen_string_literal: true

wait = Selenium::WebDriver::Wait.new(timeout: 80)

Given('I am viewing the hi.guru website') do
	$web_driver.get 'https://hi.guru/'
	$web_driver.find_element(ElementWarehouse::HIGURU_WIDGET)
end

Given('I am viewing the Fastcomm website') do
	$web_driver.get 'https://fastcomm.com'
	#$web_driver.get 'file:///D:/FastcommWidget.html'
	sleep 10
	if $web_driver.find_elements(ElementWarehouse::POP_UP_DISMISS).first
		sleep 2
		$web_driver.find_element(ElementWarehouse::POP_UP_DISMISS).click
		$stdout.puts 'Covid Pop up Displayed'.green
	end
	sleep 4
	wait_for_widget
	wait.until { $web_driver.find_element(ElementWarehouse::FASTCOMM_LOGO).displayed? }
end

Given('I am on the HiGuru Sign In Page') do
	$web_driver.get 'https://hi.guru'
	if $web_driver.find_elements(ElementWarehouse::POP_UP_DISMISS).first
		sleep 2
		$web_driver.find_element(ElementWarehouse::POP_UP_DISMISS).click
		$stdout.puts 'Corona Pop up Displayed'
	end
	sleep 4
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
end

Then('I Sign in with my own valid Credentials') do
	$web_driver.get 'https://hi.guru'
	#$web_driver.find_elements(ElementWarehouse::POP_UP_DISMISS).first&.click
	sleep 4
	$web_driver.find_element(ElementWarehouse::HIGURU_LOGIN_BUTTON).click
	sleep 7
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.hi_guru_email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.hi_guru_password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 5
	$web_driver.find_element(ElementWarehouse::HIGURU_COMPANY_UNIT).click
	sleep 8
	$web_driver.find_element(ElementWarehouse::HIGURU_COMPANY_UNIT_SELECTION).click
	sleep 5
end

Given('I am already signed in') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.outlook_email)
	sleep 1
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
	sleep 1
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 2
	#$web_driver.find_element(ElementWarehouse::TEST_HIGURU).click
	sleep 3
	#$web_driver.find_elements(ElementWarehouse::CLOSE_NOTIFICATION).first&.click
end

When('I Sign in with Invalid Credentials') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys('Bonga@test.com')
	sleep 3
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys('password@1234')
	sleep 3
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
end

Given('I forgot my password') do
	$web_driver.get 'https://app-qa.hi.guru/account/login'
	$web_driver.find_element(ElementWarehouse::I_FORGOT_MY_PASSWORD).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::FORGOT_EMAIL_FIELD).click
	$web_driver.find_element(ElementWarehouse::FORGOT_EMAIL_FIELD).send_keys(TestUser.gmail_email)
	sleep 2
	$web_driver.find_element(ElementWarehouse::SEND_RESET_EMAIL).click
end

Then('I reset the password') do
	open_new_tab
	$web_driver.get('https://google.co.za/')
	sleep 3
	$web_driver.find_element(ElementWarehouse::GMAIL_BUTTON).click
	sleep 4
	if $web_driver.find_elements(ElementWarehouse::GMAIL_SIGN_IN_BUTTON).first
		$web_driver.find_elements(ElementWarehouse::GMAIL_SIGN_IN_BUTTON).first.click
		$web_driver.close
		$web_driver.switch_to.window( $web_driver.window_handles.last )
	end
	sleep 1
	$web_driver.find_element(ElementWarehouse::GMAIL_EMAIL_FIELD).send_keys(TestUser.gmail_email)
	sleep 2
	$web_driver.find_element(ElementWarehouse::GMAIL_NEXT_BUTTON).click
	sleep 1
	$web_driver.find_element(ElementWarehouse::GMAIL_PASSWORD_FIELD).send_keys(TestUser.gmail_password)
	sleep 1
	$web_driver.find_element(ElementWarehouse::GMAIL_PASS_NEXT_BUTTON).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::RECEIVED_MAIL_PASS_RESET).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::GMAIL_RESET_PASSWD_LINK).click
	sleep 4
	$web_driver.switch_to.window($web_driver.window_handles.last)
	$web_driver.find_element(ElementWarehouse::NEW_PASSWORD_FIELD).send_keys(TestUser.new_password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONFIRM_PASSWORD_FIELD).send_keys(TestUser.new_password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::NEW_PASSWORD_DONE_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::LOGIN_ACCOUNT_SELECT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::AGENT_IMAGE).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::LOGOUT_BUTTON).click
end

Then('I Login with my changed password') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.email)
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.new_password)
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	$web_driver.find_element(ElementWarehouse::LOGIN_ACCOUNT_SELECT).click
	#$web_driver.find_element(ElementWarehouse::NEW_COMPANY_UNIT).click
end