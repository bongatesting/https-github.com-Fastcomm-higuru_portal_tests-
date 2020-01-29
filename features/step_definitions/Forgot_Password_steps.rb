wait = Selenium::WebDriver::Wait.new(timeout: 80)

Given('I forgot my password') do
	$web_driver.get 'https://app-qa.hi.guru/account/login'
	$web_driver.find_element(ElementWarehouse::I_FORGOT_MY_PASSWORD).click
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.email)
	sleep 2
	$web_driver.find_element(ElementWarehouse::SEND_RESET_EMAIL).click
end

Then('I reset the password') do
	open_new_tab
	$web_driver.get "https://mail.google.com/"
	$web_driver.find_element(ElementWarehouse::SIGN_IN).click
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
	$web_driver.find_element(ElementWarehouse::PASSWORD_RESET_REQUEST)
	$web_driver.find_element(ElementWarehouse::RESET_PASSWORD).click
	sleep 1
	$web_driver.switch_to.window( $web_driver.window_handles.last )
	sleep 10
	wait.until { $web_driver.find_element(ElementWarehouse::NEW_PASSWORD).click }
	NEW_PASSWORD = $web_driver.find_element(ElementWarehouse::NEW_PASSWORD_FIELD)
	NEW_PASSWORD.click
	NEW_PASSWORD.type(TestUser.new_password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::DONE_BUTTON).click
	sleep 3
end