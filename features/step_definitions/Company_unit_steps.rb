Given('I have more than one Company Unit linked to the Account') do
	$web_driver.navigate.to "https://#{ENV['HOST']}.hi.guru/"
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.email)
	sleep 2
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
	sleep 2
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 5
	$web_driver.find_element(ElementWarehouse::BRKLYN).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::NOT_NOW_NOTIFICATION).click
end

Then('Go to the Conversation View') do
	$web_driver.find_element(ElementWarehouse::CONVERSATIONS_TAB).click
	sleep 3
end

Then('Switch to company unit Two and back') do
	$web_driver.find_element(ElementWarehouse::COMPANY_UNITS).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::SWITCH_TO_TEST).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::COMPANY_UNITS).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::SWITCH_TO_BRKLYN).click
end

Given('The agent already exists') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 8
	$web_driver.find_element(ElementWarehouse::NOT_NOW_NOTIFICATION).click
	sleep 3
end
Then('I Remove the Agent') do
	$web_driver.find_element(ElementWarehouse::PEOPLE_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SELECT_AGENT).click
	sleep 5
	$web_driver.find_element(ElementWarehouse::SELECT_DELETE).click
	sleep 6
	$web_driver.find_element(ElementWarehouse::DELETE_AGENT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::PEOPLE_TAB).click
end