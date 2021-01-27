# frozen_string_literal: true

wait = Selenium::WebDriver::Wait.new(timeout: 80)

Given('I have the Webmessage channel') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.gmail_email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	$web_driver.find_element(ElementWarehouse::LOGIN_ACCOUNT_SELECT).click
	$web_driver.find_element(ElementWarehouse::CHANNELS_TAB).click
	sleep 5
end

Then('I adjust the settings') do
	$web_driver.find_element(ElementWarehouse::WEB_MESSAGE_DROP_DOWN).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::WEB_MESSAGE_SETTINGS).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::PRE_CHAT_FORM_TOGGLE).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CHAT_FORM_NAME_CHECKBOX).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CHAT_FORM_EMAIL_CHECKBOX).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CHAT_FORM_MOBILE_NUMBER_CHECKBOX).click
end

Then('I test if the settings have been applied') do
	open_new_tab
	sleep 3
	$web_driver.get(TestUser.qa_web_widget_1)
	wait.until { $web_driver.find_element(ElementWarehouse::QA_WEB_WIDGET).displayed? }
	$web_driver.find_element(ElementWarehouse::QA_WEB_WIDGET).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::PRECHAT_FORM_NAME_FIELD).send_keys(TestUser.customer_name)
	sleep 3
	$web_driver.find_element(ElementWarehouse::PRECHAT_FORM_EMAIL_FIELD).send_keys(TestUser.gmail_email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::PRECHAT_FORM_MOBILE_FIELD).send_keys(TestUser.mobile_number)
	sleep 3
	$web_driver.find_element(ElementWarehouse::START_CHAT_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::QA_WEB_WIDGET_CHAT_FIELD).send_keys('Webmessage settings test')
	sleep 3
	$web_driver.find_element(ElementWarehouse::QA_WEB_WIDGET_CHAT_FIELD).send_keys(:return)
	sleep 3
	$web_driver.switch_to.window( $web_driver.window_handles.first )
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONVERSATIONS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SELECT_INBOUND_CHAT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::RESOLVE_DROP_DOWN).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::RESOLVE_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::AGENT_HOME_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CHANNELS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::WEB_MESSAGE_DROP_DOWN).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::WEB_MESSAGE_SETTINGS).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::PRE_CHAT_FORM_TOGGLE).click
end