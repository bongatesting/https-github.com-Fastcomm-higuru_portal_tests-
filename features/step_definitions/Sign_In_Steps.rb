# frozen_string_literal: true

wait = Selenium::WebDriver::Wait.new(timeout: 80)

Given('I am viewing the hi.guru website') do
	$web_driver.get 'file:///D:/HiGuRuWidget.html'
	$web_driver.find_element(ElementWarehouse::WIDGET)
end

Given('I am viewing the Fastcomm website') do
	$web_driver.get 'https://fastcomm.com'
	#$web_driver.get 'file:///D:/FastcommWidget.html'
	wait_for_widget
	$web_driver.find_element(ElementWarehouse::FASTCOMM_LOGO)
end

Given('I am on the HiGuru Sign In Page') do
	$web_driver.get 'https://hi.guru'
	$web_driver.find_element(ElementWarehouse::LOGO)
	$web_driver.find_element(ElementWarehouse::WIDGET).click
	$web_driver.find_element(ElementWarehouse::WELCOME_FASTCOMM_TEXT).click
end

Then('I Sign in with my own valid Credentials') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.hi_guru_email)
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.hi_guru_password)
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::TEST_HIGURU).click
end

Given('I am already signed in') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.test_user_1_email)
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.test_user_1_password)
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::TEST_HIGURU).click
	$web_driver.find_element(ElementWarehouse::CLOSE_NOTIFICATION).click
end

When('I Sign out') do

end

When('I Sign in with Invalid Credentials') do

end

Then('I Sign in with Demo Credentials') do

end

Given('I forgot my password') do
	$web_driver.get 'https://app-qa.hi.guru/account/login'
	$web_driver.find_element(ElementWarehouse::I_FORGOT_MY_PASSWORD).click
	$web_driver.find_element(ElementWarehouse::FORGOT_EMAIL_FIELD).send_keys(TestUser.email)
	sleep 2
	$web_driver.find_element(ElementWarehouse::SEND_RESET_EMAIL).click
end

Then('I reset the password') do
	open_new_tab
	$web_driver.get "https://mail.google.com/"
	$web_driver.find_element(ElementWarehouse::GMAIL_SIGN_IN_BUTTON).click
	$web_driver.switch_to.window( $web_driver.window_handles.last )
	A = $web_driver.find_element(ElementWarehouse::GMAIL_EMAIL_FIELD)
	A.click
	A.type(TestUser.test_user_1_email)
	$web_driver.find_element(ElementWarehouse::NEXT_BUTTON).click
	B = $web_driver.find_element(ElementWarehouse::GMAIL_PASSWORD_FIELD)
	B.type(TestUser.test_user_1_password)
	sleep 2
	$web_driver.find_element(ElementWarehouse::PASSWORD_NEXT_BUTTON).click
	sleep 8
	$web_driver.find_element(ElementWarehouse::PASSWORD_RESET_REQUEST).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::RESET_PASSWORD).click
	sleep 1
	$web_driver.switch_to.window( $web_driver.window_handles.last )
	sleep 10
	$web_driver.find_element(ElementWarehouse::NEW_PASSWORD_FIELD).click
	$web_driver.find_element(ElementWarehouse::NEW_PASSWORD_FIELD).send_keys(TestUser.new_password)
	sleep 2
	$web_driver.find_element(ElementWarehouse::CONFIRM_PASSWORD_FIELD).click
	$web_driver.find_element(ElementWarehouse::CONFIRM_PASSWORD_FIELD).send_keys(TestUser.new_password)
	sleep 2
	$web_driver.find_element(ElementWarehouse::DONE_BUTTON).click
	sleep 3
	C = $web_driver.find_element(ElementWarehouse::COMPANY_UNIT)
	C.click
	sleep 3
	$web_driver.find_element(ElementWarehouse::PROFILE_BUTTON).click
	sleep 3
	D = $web_driver.find_element(ElementWarehouse::SIGN_OUT)
	D.click
end

Then('I Login with my changed password') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.email)
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.new_password)
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	$web_driver.find_element(ElementWarehouse::NEW_COMPANY_UNIT).click
	$web_driver.find_element(ElementWarehouse::CLOSE_NOTIFICATION).click
end