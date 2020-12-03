#frozen_string_literal: true

wait = Selenium::WebDriver::Wait.new(timeout: 80)

Given('I have already signed up') do
	$web_driver.find_element(ElementWarehouse::SIGN_UP_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ALREADY_HAS_ACCOUNT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.gmail_email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.gmail_password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
end

Then('I complete the test') do
	$web_driver.find_element(ElementWarehouse::AGENT_IMAGE).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::LOGOUT_BUTTON).click
end

Given('I have forgotten my Password') do
	$web_driver.find_element(ElementWarehouse::I_FORGOT_MY_PASSWORD).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::FORGOT_EMAIL_FIELD).send_keys('Bonga@test.com')
	sleep 3
	$web_driver.find_element(ElementWarehouse::BACK_TO_LOGIN).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::I_FORGOT_MY_PASSWORD).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::FORGOT_EMAIL_FIELD).send_keys(TestUser.gmail_email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::SEND_RESET_EMAIL).click
	sleep 3
end

Then('I complete the password reset process') do
	open_new_tab
	$web_driver.get 'https://gmail.com/'
	sleep 5
	$web_driver.find_element(ElementWarehouse::GMAIL_EMAIL_FIELD).send_keys(TestUser.gmail_email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::GMAIL_NEXT_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::GMAIL_PASSWORD_FIELD).send_keys(TestUser.gmail_password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::GMAIL_PASSWORD_NEXT_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::GMAIL_OPEN_EMAIL).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::GMAIL_RESET_PASSWD_LINK).click
	sleep 3
	$web_driver.switch_to.window( $web_driver.window_handles.last )
	sleep 3
	$web_driver.find_element(ElementWarehouse::NEW_PASSWORD_FIELD).send_keys(TestUser.new_password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONFIRM_PASSWORD_FIELD).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONFIRM_PASSWORD_DONE_BUTTON).click
	sleep 5
end

Given('I am an Agent') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.agent_email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 3
end

Then('I log in and Log out') do
	$web_driver.find_element(ElementWarehouse::AGENT_HOME_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::AGENT_DROP_DOWN_MENU).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ACCOUNT_SETTINGS).click
	sleep 6
	$web_driver.find_element(ElementWarehouse::AGENT_DROP_DOWN_MENU).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::AGENT_LOGOUT_BUTTON).click
end

Given('I am the owner') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
end

Then('I log in and log off') do
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::LOGIN_ACCOUNT_SELECT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::AGENT_IMAGE).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::LOGOUT_BUTTON).click
end

Then('select the company account and the company unit') do
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::LOGIN_ACCOUNT_SELECT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_SElECT).click
	sleep 5
	$web_driver.find_element(ElementWarehouse::AGENT_IMAGE).click
	sleep 3
	$web_driver.switch_to.window( $web_driver.window_handles.last )
	sleep 3
	$web_driver.find_element(ElementWarehouse::LOGOUT_BUTTON).click
	sleep 4
end

Given('I am logging in with a deleted Agent') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.deleted_user_email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
	sleep 3
end

Then('I try logging in with a deleted user') do
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
end