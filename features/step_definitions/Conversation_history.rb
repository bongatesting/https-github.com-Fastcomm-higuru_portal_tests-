# frozen_string_literal: true

wait = Selenium::WebDriver::Wait.new(timeout: 80)

Given('I have conversations') do
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
	$web_driver.find_element(ElementWarehouse::CONVERSATIONS_TAB).click
end

Then('I start a conversation') do
	open_new_tab
	$web_driver.get(TestUser.qa_web_widget)
	wait.until { $web_driver.find_element(ElementWarehouse::QA_WEB_WIDGET).displayed? }
	$web_driver.find_element(ElementWarehouse::QA_WEB_WIDGET).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::QA_WEB_WIDGET_CHAT_FIELD).send_keys('Conversation history test')
	sleep 3
	$web_driver.find_element(ElementWarehouse::QA_WEB_WIDGET_CHAT_FIELD).send_keys(:return)
	sleep 3
	$web_driver.switch_to.window( $web_driver.window_handles.first )
	sleep 3
end
Then('I click on conversation history') do
	$web_driver.find_element(ElementWarehouse::GO_BACK_TO_DASHBOARD).click
	sleep 6
	$web_driver.find_element(ElementWarehouse::CONVERSATION_HISTORY_TAB).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::QA_DIRECT_CONVERSATION_HISTORY).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::QA_PUBLIC_CONVERSATION_HISTORY).click
	end