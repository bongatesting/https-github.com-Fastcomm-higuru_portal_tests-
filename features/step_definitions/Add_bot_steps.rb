Given('I have no Bots added') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::NOT_NOW_NOTIFICATION).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::BOT_TAB).click
	sleep 3
end

Then('I Add the Bot') do
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
	$web_driver.find_element(ElementWarehouse::REQUEST_BUTTON).click
	$web_driver.find_element(ElementWarehouse::HIGURU_USERNAME_FIELD).send_keys('higuru')
	sleep 3
	$web_driver.find_element(ElementWarehouse::HIGURU_PASSWORD_FIELD).send_keys('higuru@123')
	sleep 3
	$web_driver.find_element(ElementWarehouse::LINK_BUTTON).click
	sleep 7
	$web_driver.find_element(ElementWarehouse::HIGURU_WORKSPACE_FIELD).send_keys('Legal Bot')
	sleep 3
	$web_driver.find_element(ElementWarehouse::LEGAL_BOT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ADD_LEGAL_BOT_BUTTON).click
	sleep 3
end

Then('Activate the Bot') do
	$web_driver.find_element(ElementWarehouse::TEST_BOT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::BOT_MENU_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ACTIVATE_BOT_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_SETTINGS).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SETTINGS).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::WELCOME_ASSISTANT_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ACTIVATE_TEST_BOT).click
	sleep 3
end

Then('Test Bot') do
	$web_driver.find_element(ElementWarehouse::CONVERSATIONS_TAB).click
	sleep 3
	open_new_tab
	$web_driver.get "file:///C:/Users/Bonga%20Fati/Desktop/QA%20Test%20run/WebmessageQA39.html"
	$web_driver.find_element(ElementWarehouse::WEB_WIDGET).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::WEB_WIDGET_CHAT_FIELD).send_keys('This is a Bot Test message')
	sleep 3
	$web_driver.find_element(ElementWarehouse::WEB_WIDGET_CHAT_FIELD).send_keys(:return)
	sleep 3
	$web_driver.close.last
	$web_driver.switch_to.window( $web_driver.window_handles.first )
	$web_driver.find_element(ElementWarehouse::BOT_CHAT).click
end

Then('Delete Bot') do
	$web_driver.find_element(ElementWarehouse::DASHBOARD).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_SETTINGS).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SETTINGS).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::REMOVE_TEST_BOT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::REMOVE_BOT).click
end