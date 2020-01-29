Then('I create the company unit') do
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::ADD_COMPANY_UNIT).click
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_INPUT).send_keys('Company Unit 2')
	$web_driver.find_element(ElementWarehouse::CREATE).click
end

Then('I view my newly created Company Unit') do
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT).click
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_2).click
end