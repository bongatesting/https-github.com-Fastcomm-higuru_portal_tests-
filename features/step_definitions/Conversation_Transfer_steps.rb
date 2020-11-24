# frozen_string_literal: true

wait = Selenium::WebDriver::Wait.new(timeout: 30)

Given('I am on the Login View and I Create a Second Agent') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::PEOPLE_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ADD_PERSON_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SCREEN_NAME).send_keys(TestUser.name)
	sleep 3
	$web_driver.find_element(ElementWarehouse::ADD_PERSON_EMAIL_FIELD).send_keys(TestUser.gmail_email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::ADD_PERSON_CREATE_BUTTON).click
	open_new_tab
	$web_driver.get 'https://gmail.com/'
	sleep 5
	$web_driver.find_element(ElementWarehouse::GMAIL_EMAIL_FIELD).send_keys(TestUser.gmail_email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::GMAIL_NEXT_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::GMAIL_PASSWORD_FIELD).send_keys(TestUser.gmail_password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::GMAIL_PASSWORD_NEXT_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::GMAIL_OPEN_EMAIL).click
	sleep 8
	$web_driver.find_element(ElementWarehouse::GMAIL_AGENT_CONFIRM_EMAIL).click
	sleep 3
	$web_driver.switch_to.window( $web_driver.window_handles.last )
	sleep 3
	$web_driver.find_element(ElementWarehouse::GOT_IT_WALK_THROUGH).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::GOT_IT_WALK_THROUGH).click
	sleep 3
	$web_driver.close.last
	sleep 2
	$web_driver.switch_to.window( $web_driver.window_handles.first )
	$web_driver.navigate.refresh
end

Then('Create Routing Tags') do
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_SETTINGS).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::SETTINGS).click
	sleep 7
	$web_driver.find_element(ElementWarehouse::MANAGE_ROUTING_SETTINGS).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::ADD_TAG_1).send_keys('Gcuwa')
	sleep 2
	$web_driver.find_element(ElementWarehouse::ADD_TAG_1).send_keys(:enter)
	sleep 2
	$web_driver.find_element(ElementWarehouse::ADD_TAG_2).send_keys('Centane')
	sleep 2
	$web_driver.find_element(ElementWarehouse::ADD_TAG_2).send_keys(:enter)
	sleep 2
	$web_driver.find_element(ElementWarehouse::CLOSE).click
end

Then('Create the second Team and Assign Routing tags to both Teams') do
	$web_driver.find_element(ElementWarehouse::TEAMS_TAB).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::ADD_TEAM_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::TEAM_NAME).send_keys('Team Two')
	sleep 3
	$web_driver.find_element(ElementWarehouse::TEAM_DESCRIPTION).send_keys('Second Team')
	sleep 3
	$web_driver.find_element(ElementWarehouse::ASSIGN_ROUTING_TAG).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SEARCH_ROUTING_TAG).send_keys('Centane')
	sleep 3
	$web_driver.find_element(ElementWarehouse::SELECT_ROUTING_TAG_1).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ASSIGN_ROUTING_TAGS_SAVE).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::ASSIGN_ROUTING_TAG).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SEARCH_ROUTING_TAG).send_keys('General')
	sleep 3
	$web_driver.find_element(ElementWarehouse::SELECT_ROUTING_TAG_1).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ASSIGN_ROUTING_TAGS_SAVE).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ASSIGN_TEAM_MEMBERS).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SEARCH_TEAM_MEMBER).send_keys('Agent_Two')
	sleep 3
	$web_driver.find_element(ElementWarehouse::SELECT_TEAM_MEMBER).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ASSIGN_MEMBER).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CREATE_TEAM_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::TEAM_1).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::TEAM_EDIT_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::TYPE_ROUTING_TAG_1).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SEARCH_ROUTING_TAG).send_keys('Gcuwa')
	sleep 2
	$web_driver.find_element(ElementWarehouse::SELECT_ROUTING_TAG_1).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SAVE_ROUTING_TAG).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::UPDATE_TEAM_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONVERSATIONS_TAB).click
	sleep 4
end

Then('Initiate a Conversation') do
	open_new_tab
	sleep 3
	$web_driver.get(TestUser.qa_web_widget)
	sleep 3
	wait.until { $web_driver.find_element(ElementWarehouse::QA_WEB_WIDGET).displayed? }
	$web_driver.find_element(ElementWarehouse::QA_WEB_WIDGET).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::QA_WEB_WIDGET_CHAT_FIELD).send_keys('Conversation Transfer Test Case')
	sleep 3
	$web_driver.find_element(ElementWarehouse::QA_WEB_WIDGET_CHAT_FIELD).send_keys(:return)
	sleep 3
	open_new_tab
	sleep 3
	$web_driver.navigate.to 'https://app-qa.hi.guru/account/login'
	sleep 5
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
	$web_driver.find_element(ElementWarehouse::QA_INBOUND_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SELECT_INBOUND_CHAT).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::TRANSFER_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::GCUWA_TAG).click
	sleep 3
end

Then('Check if the conversation transfer labels are correct') do
	$web_driver.find_element(ElementWarehouse::QA_HOME_DASHBOARD).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::QA_CONVERSATION_HISTORY).click
	sleep 7
	$web_driver.find_element(ElementWarehouse::OPEN_CONVERSATION).click
	sleep 5
end

Then('I Delete Team Two and the Second Agent') do
	$web_driver.find_element(ElementWarehouse::TEAMS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::TEAM_TWO).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::TEAM_DROP_DOWN).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::DELETE_TEAM).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONFIRM_DELETE_TEAM).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::TEAM_1).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::TEAM_EDIT_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::REMOVE_GCUWA_TAG_1).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::REMOVE_GCUWA_TAG_1).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::UPDATE_TEAM_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::PEOPLE_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SELECT_AGENT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::AGENT_DROP_DOWN_MENU).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::DELETE_USER_BUTTON).click
end

Then('I Remove Routing Tags') do
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_SETTINGS).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SETTINGS).click
	sleep 7
	$web_driver.find_element(ElementWarehouse::MANAGE_ROUTING_SETTINGS).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::REMOVE_CENTANE_TAG).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::REMOVE_GCUWA_TAG_2).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CLOSE).click
end