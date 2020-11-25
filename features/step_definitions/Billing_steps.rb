Given('I have an account') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 5
end

Then('I go to the billing page and navigate through the tabs') do
	$web_driver.find_element(ElementWarehouse::AGENT_IMAGE).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::BILLING).click
	sleep 3
	#$web_driver.find_element(ElementWarehouse::BILLING_PAYMENT_METHOD).click
	#sleep 3
	#$web_driver.find_element(ElementWarehouse::BILLING_INFO_BUTTON).click
end