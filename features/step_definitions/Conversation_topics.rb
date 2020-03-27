Given('I am logged in') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.email)
	sleep 2
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
	sleep 2
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::NOT_NOW_NOTIFICATION).click
	sleep 2
end

Then('I Add Conversation Topics Tags') do
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_SETTINGS).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SETTINGS).click
	$web_driver.find_element(ElementWarehouse::MANAGE_CONVERSATION_TOPICS).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ADD_CONVERSATION_TAG_FIELD).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ADD_CONVERSATION_TAG_FIELD).send_keys('Tag 1')
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
	$web_driver.get "file:///C:/Users/Bonga%20Fati/Desktop/QA%20Test%20run/WebmessageQA39.html"
	sleep 3
	$web_driver.find_element(ElementWarehouse::WEB_WIDGET).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::WEB_WIDGET_CHAT_FIELD).send_keys('This is a Conversation Tag test case')
	sleep 3
	$web_driver.find_element(ElementWarehouse::WEB_WIDGET_CHAT_FIELD).send_keys(:return)
	sleep 3
	$web_driver.close.last
	sleep 3
	$web_driver.switch_to.window( $web_driver.window_handles.first )
	$web_driver.find_element(ElementWarehouse::CONVERSATIONS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::INBOUND_TAB).click
	$web_driver.find_element(ElementWarehouse::TAG_CONVERSATION).click
end
