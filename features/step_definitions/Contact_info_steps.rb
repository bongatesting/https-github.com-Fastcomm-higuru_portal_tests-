# frozen_string_literal: true

wait = Selenium::WebDriver::Wait.new(timeout: 80)

Given('I have webmessage channel added on a Free Plan') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.free_plan_email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 3
end

Then('I apply the webmessage channel settings') do
	$web_driver.find_element(ElementWarehouse::CHANNELS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::WEB_MESSAGE_DROP_DOWN).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::WEB_MESSAGE_SETTINGS).click
	sleep 5
	$web_driver.find_element(ElementWarehouse::PRE_CHAT_FORM_TOGGLE).click
	sleep 7
	$web_driver.find_element(ElementWarehouse::CHAT_FORM_NAME_CHECKBOX).click
	sleep 7
	$web_driver.find_element(ElementWarehouse::CHAT_FORM_EMAIL_CHECKBOX).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CHAT_FORM_MOBILE_NUMBER_CHECKBOX).click
	sleep 3
end

Then('I start a Webmessage chat') do
	open_new_tab
	sleep 3
	$web_driver.get(TestUser.free_plan_web_widget)
	wait.until { $web_driver.find_element(ElementWarehouse::QA_WEB_WIDGET).displayed? }
	$web_driver.find_element(ElementWarehouse::QA_WEB_WIDGET).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::PRECHAT_FORM_NAME_FIELD).send_keys(TestUser.customer_name)
	sleep 3
	$web_driver.find_element(ElementWarehouse::PRECHAT_FORM_EMAIL_FIELD).send_keys(TestUser.gmail_email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::PRECHAT_FORM_SELECT_COUNTRY).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::PRECHAT_FORM_MOBILE_FIELD).send_keys(TestUser.mobile_number)
	sleep 3
	$web_driver.find_element(ElementWarehouse::START_CHAT_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::QA_WEB_WIDGET_CHAT_FIELD).send_keys('Webmessage settings test')
	sleep 3
	$web_driver.find_element(ElementWarehouse::QA_WEB_WIDGET_CHAT_FIELD).send_keys(:return)
	sleep 3
end

Then('I view the Contact info features') do
	$web_driver.switch_to.window( $web_driver.window_handles.first )
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONVERSATIONS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SELECT_BONGA_TEST_CHAT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::VIEW_CUSTOMER_INFO).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONTACT_INFO_CONVO_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONTACT_INFO_TICKETS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONTACT_INFO_DETAILS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CLOSE_CUSTOMER_INFO).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::RESOLVE_DROP_DOWN).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::RESOLVE_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::GO_BACK_TO_DASHBOARD).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CHANNELS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::WEB_MESSAGE_DROP_DOWN).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::WEB_MESSAGE_SETTINGS).click
	sleep 5
	$web_driver.find_element(ElementWarehouse::PRE_CHAT_FORM_TOGGLE).click
	sleep 4
end

Then('I apply the settings') do
	$web_driver.find_element(ElementWarehouse::CHANNELS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::WEB_MESSAGE_DROP_DOWN).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::WEB_MESSAGE_SETTINGS).click
	sleep 5
	$web_driver.find_element(ElementWarehouse::PRE_CHAT_FORM_TOGGLE).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CHAT_FORM_NAME_CHECKBOX).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CHAT_FORM_EMAIL_CHECKBOX).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CHAT_FORM_MOBILE_NUMBER_CHECKBOX).click
	sleep 3
end

Then('I start a Webmessage channel chat') do
	open_new_tab
	sleep 3
	$web_driver.get(TestUser.qa_web_widget)
	wait.until { $web_driver.find_element(ElementWarehouse::QA_WEB_WIDGET).displayed? }
	$web_driver.find_element(ElementWarehouse::QA_WEB_WIDGET).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::PRECHAT_FORM_NAME_FIELD).send_keys(TestUser.customer_name)
	sleep 3
	$web_driver.find_element(ElementWarehouse::PRECHAT_FORM_EMAIL_FIELD).send_keys(TestUser.gmail_email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::PRECHAT_FORM_SELECT_COUNTRY).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::PRECHAT_FORM_MOBILE_FIELD).send_keys(TestUser.mobile_number)
	sleep 3
	$web_driver.find_element(ElementWarehouse::START_CHAT_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::QA_WEB_WIDGET_CHAT_FIELD).send_keys('Webmessage settings test')
	sleep 3
	$web_driver.find_element(ElementWarehouse::QA_WEB_WIDGET_CHAT_FIELD).send_keys(:return)
	sleep 3
end

Then('I view the Contact information') do
	$web_driver.switch_to.window( $web_driver.window_handles.first )
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONVERSATIONS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SELECT_BONGA_TEST_CHAT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::VIEW_CUSTOMER_INFO).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONTACT_INFO_CONVO_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONTACT_INFO_TICKETS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONTACT_INFO_DETAILS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SIDE_PANEL_CALL_BUTTON).click
	sleep 3
	$web_driver.page_source.include? 'started a call,'
	sleep 3
	#$web_driver.find_element(ElementWarehouse::HANG_UP_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CLOSE_CUSTOMER_INFO).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::RESOLVE_DROP_DOWN).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::RESOLVE_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::GO_BACK_TO_DASHBOARD).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::WEB_MESSAGE_DROP_DOWN).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::WEB_MESSAGE_SETTINGS).click
	sleep 5
	$web_driver.find_element(ElementWarehouse::PRE_CHAT_FORM_TOGGLE).click
	sleep 4
end