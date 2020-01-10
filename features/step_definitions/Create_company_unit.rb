Then('I create the company unit') do
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ADD_COMPANY_UNIT).click
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_INPUT).send_keys('Company Unit 2')
	$web_driver.find_element(ElementWarehouse::CREATE).click
end

Then('I confirm the Company unit has been created') do
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT).click
end
