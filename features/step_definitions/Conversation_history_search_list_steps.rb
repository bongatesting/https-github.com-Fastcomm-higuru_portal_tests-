# frozen_string_literal: true

wait = Selenium::WebDriver::Wait.new(timeout: 80)

Given('I a conversation history') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::LOGIN_ACCOUNT_SELECT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_SELECT).click
	sleep 3
end

Then('I search using a conversation ID') do
	$web_driver.find_element(ElementWarehouse::CONVERSATION_HISTORY_TAB).click
	sleep 7
	$web_driver.find_element(ElementWarehouse::CONVO_HISTORY_SEARCH_FIELD).send_keys(TestUser.convo_id)
	sleep 5
	$web_driver.find_element(ElementWarehouse::OPEN_THE_CHAT).click
	sleep 4
end