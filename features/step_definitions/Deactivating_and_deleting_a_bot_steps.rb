# frozen_string_literal: true

wait = Selenium::WebDriver::Wait.new(timeout: 80)

Given('The bot is active') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 5
	$web_driver.find_element(ElementWarehouse::LOGIN_ACCOUNT_SELECT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_SELECT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_SETTINGS).click
	sleep 5
	$web_driver.find_element(ElementWarehouse::SETTINGS_TAB).click
	sleep 5
	$web_driver.find_element(ElementWarehouse::QA_TEST_BOT).click
	sleep 5
end

Then('I deactivate the Bot') do
	$web_driver.find_element(ElementWarehouse::REMOVE_QA_TEST_BOT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::WELCOME_ASSISTANT_TOGGLE).click
	sleep 5
	$web_driver.find_element(ElementWarehouse::BOTS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ACTIVE_TEST_BOT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::BOT_MENU_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::DEACTIVATE_BOT_BUTTON).click
end

Then('I delete the Bot') do
	$web_driver.find_element(ElementWarehouse::INACTIVE_BOT_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::INACTIVE_TEST_BOT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::BOT_MENU_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::DELETE_BOT_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONFIRM_DELETE_BOT_BUTTON).click
end