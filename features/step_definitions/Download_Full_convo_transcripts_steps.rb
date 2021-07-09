# frozen_string_literal: true

wait = Selenium::WebDriver::Wait.new(timeout: 80)

Given('I have Conversation history') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 5
	$web_driver.find_element(ElementWarehouse::LOGIN_ACCOUNT_SELECT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_SELECT).click
end

Then('I download the Full Conversation Transcripts') do
	$web_driver.find_element(ElementWarehouse::CONVERSATION_HISTORY_TAB).click
	sleep 6
	$web_driver.find_element(ElementWarehouse::RESOLVED_CHAT_CONVO_HISTORY).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONVO_HISTORY_DOWNLOAD_ICON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::FULL_TRANSCRIPTS_BUTTON).click
	sleep 5
end