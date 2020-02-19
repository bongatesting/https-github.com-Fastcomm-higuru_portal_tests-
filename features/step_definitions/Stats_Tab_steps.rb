Given('I am on the Dashboard') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.email)
	sleep 2
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
	sleep 2
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::NOT_NOW_NOTIFICATION).click
end

Then('I navigate to the stats Tab') do
	$web_driver.find_element(ElementWarehouse::STATS_TAB).click
	sleep 4
end

Then('I view Today stats') do
	$web_driver.find_element(ElementWarehouse::STATS_DROP_DOWN_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::TODAY_BUTTON).click
	sleep 3
end

Then('I view Last week stats') do
	$web_driver.find_element(ElementWarehouse::STATS_DROP_DOWN_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::LAST_WEEK_BUTTON).click
	sleep 3
end

Then('I view Last month stats')do
	$web_driver.find_element(ElementWarehouse::STATS_DROP_DOWN_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::LAST_MONTH_BUTTON).click
	sleep 3
end

Then('I view Last year stats') do
	$web_driver.find_element(ElementWarehouse::STATS_DROP_DOWN_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::LAST_YEAR_BUTTON).click
	sleep 3
end

Then('I navigate to the dashboard') do
	$web_driver.find_element(ElementWarehouse::DASHBOARD).click
end