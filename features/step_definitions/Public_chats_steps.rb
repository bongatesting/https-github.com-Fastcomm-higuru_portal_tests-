# frozen_string_literal: true

wait = Selenium::WebDriver::Wait.new(timeout: 80)

Given('I have a public chat') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::LOGIN_ACCOUNT_SELECT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_SELECT).click
end

Then('I download and resolve the chat') do
	$web_driver.find_element(ElementWarehouse::CONVERSATIONS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::PUBLIC_CHAT_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::OPEN_THE_CHAT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::DOWNLOAD_ICON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::DOWNLOAD_CURRENT_TRANSCRIPTS).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::RESOLVE_DROP_DOWN).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::RESOLVE_AND_DOWNLOAD).click
	sleep 3
end