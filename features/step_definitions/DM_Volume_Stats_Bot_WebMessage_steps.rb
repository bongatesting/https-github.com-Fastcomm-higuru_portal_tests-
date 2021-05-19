# frozen_string_literal: true

wait = Selenium::WebDriver::Wait.new(timeout: 80)

Given('I have added a Bot') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.hi_guru_email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::BOTS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ADD_BOT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::BOT_NAME_FIELD).send_keys('Test Bot')
	sleep 3
	$web_driver.find_element(ElementWarehouse::BOT_OVERVIEW_FIELD).send_keys('Test')
	sleep 3
	$web_driver.find_element(ElementWarehouse::BOT_PLATFORM).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::HIGURU_BOT).click
	sleep 2
	$web_driver.action.key_down(:shift)
			.key_down(:alt)
			.click($web_driver.find_element(ElementWarehouse::REQUEST_BUTTON))
			.key_up(:shift)
			.key_up(:alt)
			.perform
	sleep 3
	$web_driver.find_element(ElementWarehouse::HIGURU_USERNAME_FIELD).send_keys('higuru')
	sleep 3
	$web_driver.find_element(ElementWarehouse::HIGURU_PASSWORD_FIELD).send_keys('higuru@123')
	sleep 3
	$web_driver.find_element(ElementWarehouse::LINK_BUTTON).click
	sleep 7
	$web_driver.find_element(ElementWarehouse::SELECT_BOT).click
	sleep 5
	scroll_to($web_driver.find_element(ElementWarehouse::LEGAL_BOT))
	$web_driver.find_element(ElementWarehouse::LEGAL_BOT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ADD_LEGAL_BOT_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::INACTIVE_BOT_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::INACTIVE_TEST_BOT).click
	sleep 7
	$web_driver.find_element(ElementWarehouse::BOT_MENU_BUTTON).click
	sleep 5
	$web_driver.find_element(ElementWarehouse::ACTIVATE_BOT_BUTTON).click
	sleep 5
	$web_driver.find_element(ElementWarehouse::DASHBOARD).click
	sleep 5
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_SETTINGS).click
	sleep 5
	$web_driver.find_element(ElementWarehouse::SETTINGS_TAB).click
	sleep 5
	$web_driver.find_element(ElementWarehouse::WELCOME_ASSISTANT_BUTTON).click
	sleep 5
	$web_driver.find_element(ElementWarehouse::ACTIVATE_TEST_BOT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ACTIVATE_BOT_FIRST_RESPONDER).click
	sleep 5
end

Then('Start a chat and check DM Volume count') do
	open_new_tab
	$web_driver.get(TestUser.dm_volume_web_widget)
	wait.until { $web_driver.find_element(ElementWarehouse::QA_WEB_WIDGET).displayed? }
	$web_driver.find_element(ElementWarehouse::QA_WEB_WIDGET).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::QA_WEB_WIDGET_CHAT_FIELD).send_keys('hello')
	sleep 3
	$web_driver.find_element(ElementWarehouse::QA_WEB_WIDGET_CHAT_FIELD).send_keys(:return)
	sleep 3
	$web_driver.close.last
	$web_driver.switch_to.window( $web_driver.window_handles.first )
	sleep 4
	$web_driver.find_element(ElementWarehouse::STATS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::STATS_VIEW_MORE).click
	sleep 5
	$web_driver.find_element(ElementWarehouse::CONVERSATION_VOLUME_DROP_DOWN).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONVO_VOLUME_TODAY).click
	sleep 3
end

Then('I remove the Bot') do
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_SETTINGS).click
	sleep 5
	$web_driver.find_element(ElementWarehouse::SETTINGS_TAB).click
	sleep 5
	$web_driver.find_element(ElementWarehouse::QA_TEST_BOT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::REMOVE_QA_TEST_BOT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::WELCOME_ASSISTANT_TOGGLE).click
	sleep 5
	$web_driver.find_element(ElementWarehouse::BOTS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ACTIVE_BOT_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ACTIVE_TEST_BOT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::BOT_MENU_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::DELETE_BOT_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONFIRM_DELETE_BOT_BUTTON).click
end