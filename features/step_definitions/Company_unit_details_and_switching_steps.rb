# frozen_string_literal: true

wait = Selenium::WebDriver::Wait.new(timeout: 80)

Given('I have upgraded my Account') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.gmail_email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::LOGIN_ACCOUNT_SELECT).click
	sleep 5
end

Then('I edit the Company Unit details') do
	$web_driver.find_element(ElementWarehouse::MAIN_COMPANY_UNIT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_INFO).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_CHANGE_BUTTON).click
	sleep 3
	$web_driver.action.key_down(:control).send_keys('a').key_down(:control).send_keys('c').key_up(:control).perform
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_INFO_NAME_FIELD).send_keys('Nqadu Updated')
	sleep 3
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_INFO_SAVE_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_CHANGE_BUTTON).click
	$web_driver.action.key_down(:control).send_keys('a').key_down(:control).send_keys('c').key_up(:control).perform
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_INFO_NAME_FIELD).send_keys('Nqadu')
	sleep 3
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_INFO_SAVE_BUTTON).click
end

Then('I add a Company Unit') do
	$web_driver.find_element(ElementWarehouse::MAIN_COMPANY_UNIT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_INFO).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_DROP_DOWN).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CREATE_COMPANY_UNIT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_NAME).send_keys('Zulu')
	sleep 3
	$web_driver.find_element(ElementWarehouse::CREATE_COMPANY_UNIT_ADD_BUTTON).click
	sleep 7
	$web_driver.find_element(ElementWarehouse::MAIN_COMPANY_UNIT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SECONDARY_COMPANY_UNIT).click
	sleep 6
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_DROP_DOWN).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::DELETE_COMPANY_UNIT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONFIRM_DELETE_COMPANY_UNIT).click
	sleep 3
end