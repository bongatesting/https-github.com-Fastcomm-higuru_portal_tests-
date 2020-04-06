Given('I am on the Login View') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.email)
	sleep 2
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
	sleep 2
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::NOT_NOW_NOTIFICATION).click
	sleep 2
end

Then('Create Routing Tags') do
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_SETTINGS).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::SETTINGS).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::ROUTING_SETTINGS).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::ADD_TAG_1).send_keys('Gcuwa')
	sleep 2
	$web_driver.find_element(ElementWarehouse::CLOSE).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::ROUTING_SETTINGS).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::ADD_TAG_2).send_keys('Centane')
	sleep 2
	$web_driver.find_element(ElementWarehouse::CLOSE).click
	sleep 3
end

Then('Assign Routing tags to Teams') do
	$web_driver.find_element(ElementWarehouse::TEAMS_BUTTON_1).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::TEAM_1).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::TEAM_1_EDIT_BUTTON).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::TYPE_ROUTING_TAG_1).send_keys('Gcuwa')
	sleep 2
	$web_driver.find_element(ElementWarehouse::SELECT_ROUTING_TAG_1).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::UPDATE_BUTTON_1).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::TEAMS_BUTTON_1).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::TEAM_2).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::TEAM_2_EDIT_BUTTON).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::TYPE_ROUTING_TAG_2).send_keys('Centane')
	sleep 2
	$web_driver.find_element(ElementWarehouse::SELECT_ROUTING_TAG_2).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::UPDATE_BUTTON_2).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONVERSATIONS_TAB).click
	sleep 4
end

Then('Initiate a Conversation') do
	open_new_tab
	$web_driver.get "file:///C:/Users/Bonga%20Fati/Desktop/QA%20Test%20run/WebmessageQA39.html"
	$web_driver.find_element(ElementWarehouse::WEB_WIDGET).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::WEB_WIDGET_CHAT_FIELD).send_keys('Conversation Transfer Test Case')
	sleep 3
	$web_driver.find_element(ElementWarehouse::WEB_WIDGET_CHAT_FIELD).send_keys(:return)
	sleep 3
	open_new_tab
	$web_driver.navigate.to 'https://app-qa.hi.guru/account/login'
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.test_user_1_email)
	sleep 2
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.test_user_1_password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 6
	$web_driver.switch_to.window( $web_driver.window_handles.first )
	sleep 4
end

Then('Transfer the conversation') do
	$web_driver.find_element(ElementWarehouse::INBOUND_TAB).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::WEB_MESSAGE_CONVERSATION).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::TRANSFER_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CENTANE_TAG).click
	sleep 3
end

Then('Check if the conversation transfer labels are correct') do
	$web_driver.find_element(ElementWarehouse::DASHBOARD).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONVERSATION_HISTORY).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::OPEN_CONVERSATION).click
	sleep 4
end