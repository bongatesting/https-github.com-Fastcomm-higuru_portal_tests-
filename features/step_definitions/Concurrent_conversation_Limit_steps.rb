# frozen_string_literal: true

wait = Selenium::WebDriver::Wait.new(timeout: 80)

Then('I set the Concurrent Conversation Limit and Test it') do
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_SETTINGS).click
	sleep 6
	$web_driver.find_element(ElementWarehouse::SETTINGS).click
	sleep 5
	scroll_to($web_driver.find_element(ElementWarehouse::CONCURRENT_CONVERSATION_LIMIT_BUTTON))
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONCURRENT_CONVERSATION_LIMIT_BUTTON).click
	sleep 5
	$web_driver.find_element(ElementWarehouse::CONVERSATION_LIMIT_FIELD).send_keys(:backspace)
	sleep 5
	$web_driver.find_element(ElementWarehouse::CONVERSATION_LIMIT_FIELD).send_keys('1')
	sleep 5
	$web_driver.find_element(ElementWarehouse::CONVERSATION_LIMIT_SAVE_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::DASHBOARD).click
	open_new_tab
	$web_driver.get(TestUser.qa_web_widget)
	sleep 3
	wait.until { $web_driver.find_element(ElementWarehouse::QA_WEB_WIDGET).displayed? }
	$web_driver.find_element(ElementWarehouse::QA_WEB_WIDGET).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::QA_WEB_WIDGET_CHAT_FIELD).send_keys('This is a concurrent conversation Limit Test')
	sleep 3
	$web_driver.find_element(ElementWarehouse::QA_WEB_WIDGET_CHAT_FIELD).send_keys(:return)
	$web_driver.close.last
	$web_driver.switch_to.window( $web_driver.window_handles.first )
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONVERSATIONS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::QA_BOT_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::QA_SELECT_BOT_CHAT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::QA_CLAIM_BOT_CHAT_BUTTON).click
end