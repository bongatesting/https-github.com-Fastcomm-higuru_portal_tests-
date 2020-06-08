Given('I have one Company Unit') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.email)
	sleep 2
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
	sleep 2
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 5
	$web_driver.find_element(ElementWarehouse::NOT_NOW_NOTIFICATION).click
end

Then('I go to the Company Unit settings and create a new Company Unit') do
	$web_driver.find_element(ElementWarehouse::MAIN_COMPANY_UNIT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ADD_COMPANY_UNIT_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_NAME).send_keys('Zulu')
	sleep 3
	$web_driver.find_element(ElementWarehouse::CREATE_NEW_COMPANY_UNIT_ADD_BUTTON).click
	sleep 3
end

Then('I switch back to the original Company Unit') do
	$web_driver.find_element(ElementWarehouse::CONVERSATIONS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::GOT_IT_WALK_THROUGH).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::GOT_IT_WALK_THROUGH).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SECONDARY_COMPANY_UNIT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SWITCH_TO_MAIN_COMPANY).click
end