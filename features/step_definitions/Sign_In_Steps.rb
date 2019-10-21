# frozen_string_literal: true

Given('I am on the Sign In Page') do
	$web_driver.find_element(PortalWarehouse::LOGIN_EMAIL_FIELD)
	$web_driver.find_element(PortalWarehouse::LOGIN_PASSWORD)
end

When('I Sign in with Invalid Credentials') do
	$web_driver.find_element(PortalWarehouse::LOGIN_EMAIL_FIELD).send_keys('false@test.com')
	$web_driver.find_element(PortalWarehouse::LOGIN_PASSWORD).send_keys('12345678')
	$web_driver.find_element(PortalWarehouse::SUBMIT_BUTTON).click
	$web_driver.find_element(PortalWarehouse::INVALID_LOGIN_MESSAGE)
end

Then('I Sign in with Demo Credentials') do
	$web_driver.find_element(PortalWarehouse::LOGIN_EMAIL_FIELD).clear
	$web_driver.find_element(PortalWarehouse::LOGIN_EMAIL_FIELD).send_keys(TestUser.demo_email)
	$web_driver.find_element(PortalWarehouse::LOGIN_PASSWORD).clear
	$web_driver.find_element(PortalWarehouse::LOGIN_PASSWORD).send_keys(TestUser.demo_password)
	$web_driver.find_element(PortalWarehouse::SUBMIT_BUTTON).click
	sleep 5
	$web_driver.find_element(PortalWarehouse::ARDUINO_TEMP)
	$web_driver.find_element(PortalWarehouse::ASSIST_BUTTON)
	$web_driver.find_element(PortalWarehouse::COROBAY_CORNER_NB_IOT)
	$web_driver.find_element(PortalWarehouse::GDSP_TEST)
	$web_driver.find_element(PortalWarehouse::GEYSER_STATUS)
	$web_driver.find_element(PortalWarehouse::HOME_ALARM)
	$web_driver.find_element(PortalWarehouse::IOT_OFFICE_PIR)
	$web_driver.find_element(PortalWarehouse::LAKESIDE)
	$web_driver.find_element(PortalWarehouse::LAKESIDE_NB_IOT)
	$web_driver.find_element(PortalWarehouse::PANIC_POSITION)
	$web_driver.find_element(PortalWarehouse::PANIC_INFO)
end

Then('I Sign in with my own valid Credentials') do
	$web_driver.find_element(PortalWarehouse::SECOND_LOGIN_EMAIL_FIELD).clear
	$web_driver.find_element(PortalWarehouse::SECOND_LOGIN_EMAIL_FIELD).send_keys(TestUser.email)
	$web_driver.find_element(PortalWarehouse::SECOND_LOGIN_PASSWORD).clear
	$web_driver.find_element(PortalWarehouse::SECOND_LOGIN_PASSWORD).send_keys(TestUser.password)
	$web_driver.find_element(PortalWarehouse::SUBMIT_BUTTON).click
	$web_driver.find_element(PortalWarehouse::LOGO_HEADER)
end

Given('I Sign out') do
	$web_driver.find_element(PortalWarehouse::ACCOUNT_DROPDOWN).click
	$web_driver.find_element(PortalWarehouse::LOGOUT).click
end

Given('I am already signed in') do
	$web_driver.find_element(PortalWarehouse::LOGIN_EMAIL_FIELD).clear
	$web_driver.find_element(PortalWarehouse::LOGIN_EMAIL_FIELD).send_keys(TestUser.demo_email)
	$web_driver.find_element(PortalWarehouse::LOGIN_PASSWORD).clear
	$web_driver.find_element(PortalWarehouse::LOGIN_PASSWORD).send_keys(TestUser.demo_password)
	$web_driver.find_element(PortalWarehouse::SUBMIT_BUTTON).click
	sleep 5
	$web_driver.find_element(PortalWarehouse::LOGO_HEADER)
end