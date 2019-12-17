Given('I am creating a company unit') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.email)
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
end

Then('I create the company unit') do
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ADD_COMPANY_UNIT).click
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_INPUT).send_keys('Company Unit 2')
	$web_driver.find_element(ElementWarehouse::CREATE).click
end

Then('I click on Company unit') do

	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT).click
end