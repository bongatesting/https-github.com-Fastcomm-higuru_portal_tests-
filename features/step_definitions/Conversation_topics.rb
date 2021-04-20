# frozen_string_literal: true

wait = Selenium::WebDriver::Wait.new(timeout: 80)

Given('I am logged in') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::LOGIN_ACCOUNT_SELECT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_SELECT).click
end

Then('I Add Conversation Topics Tags') do
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_SETTINGS).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SETTINGS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::MANAGE_CONVERSATION_TOPICS).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ADD_CONVERSATION_TAG_FIELD).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ADD_CONVERSATION_TAG_FIELD).send_keys('Haiti')
	sleep 3
	$web_driver.action.key_down(:enter).key_up(:enter).perform
	sleep 3
	$web_driver.find_element(ElementWarehouse::ADD_CONVERSATION_TAG_FIELD).send_keys('Tag 2')
	sleep 3
	$web_driver.action.key_down(:enter).key_up(:enter).perform
	sleep 3
	$web_driver.find_element(ElementWarehouse::ADD_CONVERSATION_TAG_FIELD).send_keys('Tag 3')
	sleep 3
	$web_driver.action.key_down(:enter).key_up(:enter).perform
	sleep 3
	$web_driver.find_element(ElementWarehouse::SAVE_CONVERSATION_TAG).click
end

Then('I start a conversation and Tag it') do
	open_new_tab
	$web_driver.get(TestUser.qa_web_widget)
	sleep 3
	wait.until { $web_driver.find_element(ElementWarehouse::QA_WEB_WIDGET).displayed? }
	$web_driver.find_element(ElementWarehouse::QA_WEB_WIDGET).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::QA_WEB_WIDGET_CHAT_FIELD).send_keys('Tag Test 1')
	sleep 3
	$web_driver.find_element(ElementWarehouse::QA_WEB_WIDGET_CHAT_FIELD).send_keys(:return)
	sleep 3
	$web_driver.switch_to.window( $web_driver.window_handles.first )
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONVERSATIONS_TAB).click
	sleep 7
	$web_driver.find_element(ElementWarehouse::QA_INBOUND_TAB).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::SELECT_INBOUND_CHAT).click
	sleep 8
	$web_driver.find_element(ElementWarehouse::TAG_CONVERSATION).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SEARCH_CONVO_TOPIC_TAG).send_keys('Haiti')
	sleep 3
	$web_driver.find_element(ElementWarehouse::SELECT_CONVO_TOPIC_TAG).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SAVE_ASSIGN_CONVERSATION_TOPICS_TAGS).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::GO_BACK_TO_DASHBOARD).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_SETTINGS).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SETTINGS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::MANAGE_CONVERSATION_TOPICS).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::REMOVE_TOPIC_TAG_1).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SAVE_CONVERSATION_TAG).click
	sleep 3
end
