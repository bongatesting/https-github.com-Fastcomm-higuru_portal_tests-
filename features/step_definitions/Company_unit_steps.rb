Given('I have more than one Company Unit linked to the Account') do
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

Then('Switch to company unit Two') do
	$web_driver.find_element(ElementWarehouse::COMPANY_UNITS).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::SWITCH_TO_TEST).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::SWITCH_TO_BRKLYN).click
end

Then('I create the company unit') do

  sleep 4
  $web_driver.find_element(ElementWarehouse::ADD_COMPANY_UNIT).click
  $web_driver.find_element(ElementWarehouse::COMPANY_UNIT_INPUT).send_keys('Company Unit 2')
  $web_driver.find_element(ElementWarehouse::CREATE).click
end

Then('I view my newly created Company Unit') do
  $web_driver.find_element(ElementWarehouse::COMPANY_UNIT).click
  $web_driver.find_element(ElementWarehouse::COMPANY_UNIT_2).click
end