Then('I update my Password and Logout') do
	$web_driver.find_element(ElementWarehouse::AGENT_IMAGE).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ACCOUNT_SETTINGS).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ACCOUNT_INFO_SETTINGS).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ACCOUNT_INFO_SECURITY).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ACC_INFO_PASSWD_RESET_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CURRENT_PASSWORD_FIELD).send_keys(TestUser.password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::SECURITY_NEW_PASSWORD_FIELD).send_keys(TestUser.new_password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::SEC_CONFIRM_PASSWORD_FIELD).send_keys(TestUser.new_password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::UPDATE_PASSWORD).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::AGENT_IMAGE).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SIGN_OUT).click
	sleep 6
end

Then('I log in with the updated password') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.new_password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
end