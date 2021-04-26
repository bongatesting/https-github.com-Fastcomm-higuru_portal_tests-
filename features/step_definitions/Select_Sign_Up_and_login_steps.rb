#frozen_string_literal: true

wait = Selenium::WebDriver::Wait.new(timeout: 80)

Given('I have already signed up') do
	$web_driver.find_element(ElementWarehouse::SIGN_UP_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ALREADY_HAS_ACCOUNT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.free_plan_email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
end

Then('I complete the test') do
	$web_driver.find_element(ElementWarehouse::AGENT_IMAGE).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::OWNER_LOGOUT_BUTTON).click
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
	$web_driver.find_element(ElementWarehouse::CONFIRM_PASSWORD_FIELD).send_keys(TestUser.new_password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONFIRM_PASSWORD_DONE_BUTTON).click
	sleep 5
end

Given('I am the Owner and I Input a wrong email address') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.wrong_email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 3
end

Then('I Input a Valid email and Incorrect password') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).clear
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.free_plan_email)
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).clear
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
end
Then('I log in and Log out') do
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::OWNER_DROP_DOWN_MENU).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::OWNER_LOGOUT_BUTTON).click
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
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_SELECT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::OWNER_DROP_DOWN_MENU).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::OWNER_LOGOUT_BUTTON).click
end

Then('select the company account and the company unit') do
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::LOGIN_ACCOUNT_SELECT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_SELECT).click
	sleep 5
	$web_driver.find_element(ElementWarehouse::AGENT_IMAGE).click
	sleep 3
	$web_driver.switch_to.window( $web_driver.window_handles.last )
	sleep 3
	$web_driver.find_element(ElementWarehouse::OWNER_LOGOUT_BUTTON).click
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

Then('I select Sign up') do
	$web_driver.find_element(ElementWarehouse::SIGN_UP_BUTTON).click
	sleep 3
end

Then('I select Login') do
	$web_driver.find_element(ElementWarehouse::SIGN_UP_LOGIN_BUTTON).click
	sleep 3
end

Given('I am an Agent and the account has one company unit') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.test_user_1_cell)
	sleep 3
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
end

Then('I login and Log out') do
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SAQHWITHI_DROP_DOWN_MENU).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::AGENT_LOGOUT_BUTTON).click
	sleep 3
end

Given('I am using one email') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.hi_guru_email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
end

Then('I login as the Owner') do
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::AGENT_IMAGE).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::OWNER_LOGOUT_BUTTON).click
	sleep 3
end

Then('I login as an Agent') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.test_user_1_cell)
	sleep 3
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SAQHWITHI_DROP_DOWN_MENU).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::AGENT_LOGOUT_BUTTON).click
	sleep 3
end