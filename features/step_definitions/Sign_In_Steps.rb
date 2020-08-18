# frozen_string_literal: true

wait = Selenium::WebDriver::Wait.new(timeout: 80)

Given('I am viewing the hi.guru website') do
	$web_driver.get 'file:///D:/HiGuRuWidget.html'
	$web_driver.find_element(ElementWarehouse::WIDGET)
end

Given('I am viewing the Fastcomm website') do
	$web_driver.get 'https://fastcomm.com'
	#$web_driver.get 'file:///D:/FastcommWidget.html'
	sleep 10
	if $web_driver.find_elements(ElementWarehouse::POP_UP_DISMISS).first
		sleep 2
		$web_driver.find_element(ElementWarehouse::POP_UP_DISMISS).click
		$stdout.puts 'Corona Pop up Displayed'.green
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
	$web_driver.find_element(ElementWarehouse::POP_UP_DISMISS).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.hi_guru_email)
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.hi_guru_password)
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 5
	$web_driver.find_element(ElementWarehouse::HIGURU_COMPANY_UNIT).click
	sleep 8
	$web_driver.find_element(ElementWarehouse::HIGURU_COMPANY_UNIT_SELECTION).click
	sleep 5
	$web_driver.find_element(ElementWarehouse::CLOSE_NOTIFICATION_CONVO_PAGE).click
end

Given('I am already signed in') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.test_user_1_email)
	sleep 1
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.test_user_1_password)
	sleep 1
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::TEST_HIGURU).click
	sleep 3
	$web_driver.find_elements(ElementWarehouse::CLOSE_NOTIFICATION).first&.click
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
	$web_driver.find_element(ElementWarehouse::FORGOT_EMAIL_FIELD).send_keys(TestUser.email)
	sleep 2
	$web_driver.find_element(ElementWarehouse::SEND_RESET_EMAIL).click
end

Then('I reset the password') do
	open_new_tab
	$web_driver.get 'https://outlook.live.com/mail/'
	sleep 3
	$web_driver.navigate.refresh
	sleep 4
	$web_driver.find_elements(ElementWarehouse::OUTLOOK_SIGN_IN_BUTTON).first&.click
	sleep 3
	$web_driver.find_element(ElementWarehouse::OUTLOOK_EMAIL_FIELD).send_keys(TestUser.outlook_email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::OUTLOOK_NEXT_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::OUTLOOK_WORK_ACCOUNT_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::OUTLOOK_PASSWORD_FIELD).send_keys(TestUser.outlook_password)
	sleep 5
	$web_driver.find_element(ElementWarehouse::OUTLOOK_SIGN_IN_BUTTON_2).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::OUTLOOK_DIFF_ACCOUNT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONT_TO_OUTLOOK).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::OUTLOOK_DIFF_ACCOUNT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONT_TO_OUTLOOK).click
	sleep 7
	$web_driver.find_element(ElementWarehouse::OUTLOOK_OTHER_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::OUTLOOK_SELECT_EMAIL).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::OUTLOOK_RESET_PASSWD).click
	sleep 4
	$web_driver.switch_to.window($web_driver.window_handles.last)
	$web_driver.find_element(ElementWarehouse::NEW_PASSWORD_FIELD).send_keys(TestUser.new_password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONFIRM_PASSWORD_FIELD).send_keys(TestUser.new_password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::NEW_PASSWORD_DONE_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::AGENT_IMAGE).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SIGN_OUT).click
end

Then('I Login with my changed password') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.email)
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.new_password)
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	$web_driver.find_element(ElementWarehouse::NEW_COMPANY_UNIT).click
	$web_driver.find_element(ElementWarehouse::CLOSE_NOTIFICATION).click
end
