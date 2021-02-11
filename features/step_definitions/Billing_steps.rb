# frozen_string_literal: true

wait = Selenium::WebDriver::Wait.new(timeout: 80)

Given('I have an account') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.outlook_email)
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
	$web_driver.find_element(ElementWarehouse::GO_ENTERPRISE_BUTTON).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::DISMISS_PLAN_SELECTION).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::BILLING_PAYMENT_METHOD).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::BILLING_INFO_BUTTON).click
	sleep 3
end