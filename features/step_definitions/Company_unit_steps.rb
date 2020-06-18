Then('I go to the Company Unit settings and create a new Company Unit') do
	$web_driver.find_element(ElementWarehouse::MAIN_COMPANY_UNIT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ADD_COMPANY_UNIT_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_NAME).send_keys('Zulu')
	sleep 3
	$web_driver.find_element(ElementWarehouse::CREATE_NEW_COMPANY_UNIT_ADD_BUTTON).click
	sleep 8
end

Then('I switch back to the original Company Unit') do
	$web_driver.find_element(ElementWarehouse::CONVERSATIONS_TAB).click
	sleep 7
	$web_driver.find_element(ElementWarehouse::GOT_IT_WALK_THROUGH).click
	sleep 6
	$web_driver.find_element(ElementWarehouse::GOT_IT_WALK_THROUGH).click
	sleep 7
	$web_driver.find_element(ElementWarehouse::GO_BACK_TO_DASHBOARD).click
	sleep 5
end

Then('I delete the Company Unit') do
	$web_driver.find_element(ElementWarehouse::MAIN_COMPANY_UNIT).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::SECONDARY_COMPANY_UNIT).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_DROP_DOWN).click
	sleep 5
	$web_driver.find_element(ElementWarehouse::DELETE_COMPANY_UNIT).click
	sleep 5
	$web_driver.find_element(ElementWarehouse::CONFIRM_DELETE_COMPANY_UNIT).click
end