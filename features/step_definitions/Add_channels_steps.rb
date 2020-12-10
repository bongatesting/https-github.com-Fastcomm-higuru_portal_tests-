# frozen_string_literal: true

wait = Selenium::WebDriver::Wait.new(timeout: 80)

Then('I add WebMessage') do
	$web_driver.find_element(ElementWarehouse::CHANNELS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ADD_CHANNEL_BUTTON).click
	sleep 6
	$web_driver.find_element(ElementWarehouse::SELECT_WEB_MESSAGE).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ADD_WEBMESSAGE_POP_UP).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::WEB_MESSAGE_ADD_CHANNEL).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CHANNEL_DISPLAY_NAME_FIELD).send_keys('Webmessage Channel')
	sleep 3
	$web_driver.find_element(ElementWarehouse::SETUP_SELECT_JAVASCRIPT).click
	$web_driver.find_element(ElementWarehouse::SETUP_SELECT_WORDPRESS).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SETUP_SELECT_JAVASCRIPT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::INSTALLATION_INSTR_EMAIL_FIELD).send_keys(TestUser.gmail_email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::WEB_MESSAGE_ADD_CHANNEL_2).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::WEB_MESSAGE_DROP_DOWN).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::WEBMSG_CHANNEL_SETTINGS).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::PRE_CHAT_FORM_TOGGLE).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CHAT_FORM_NAME_CHECKBOX).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CHAT_FORM_EMAIL_CHECKBOX).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CHAT_FORM_MOBILE_NUMBER_CHECKBOX).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::PRE_CHAT_FORM_TOGGLE).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::WEB_MESSAGE_SECURITY_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::WEB_WHITELIST_MANAGE_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ADD_DOMAIN_FIELD).send_keys('https://hi.guru/')
	sleep 3
	$web_driver.find_element(ElementWarehouse::ADD_DOMAIN_FIELD).send_keys(:backspace)
	sleep 3
	$web_driver.action.key_down(:enter).key_up(:enter).perform
	sleep 3
	$web_driver.find_element(ElementWarehouse::ADD_DOMAIN_FIELD).send_keys('https://fastcomm.com')
	sleep 3
	$web_driver.action.key_down(:enter).key_up(:enter).perform
	sleep 3
	$web_driver.find_element(ElementWarehouse::WHITE_LIST_SAVE_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::WHITELIST_DOMAIN_TOGGLE).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::WEB_WHITELIST_MANAGE_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::REMOVE_DOMAIN_1).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::REMOVE_DOMAIN_2).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::WHITE_LIST_SAVE_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::WEB_INSTALLATION_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CHANNELS_SETTINGS_BACK).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::WEB_MESSAGE_DROP_DOWN).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::REMOVE_WEB_CHANNEL).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONFIRM_REMOVE_WEB_CHANNEL).click
	sleep 3
end

Then('I add Twitter') do
	$web_driver.find_element(ElementWarehouse::ADD_CHANNEL_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::TWITTER_CHANNEL).click
	sleep 5
	$web_driver.find_element(ElementWarehouse::ADD_TWITTER_CHANNEL_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONFIRM_PREMIUM_TWITTER).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::TWITTER_USERNAME).send_keys(TestUser.twitter_username)
	sleep 3
	$web_driver.find_element(ElementWarehouse::TWITTER_PASSWORD).send_keys(TestUser.twitter_password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::AUTHORIZE_APP_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONFIRM_ADD_TWITTER).click
	sleep 4
end

Then('I add Facebook') do
	$web_driver.find_element(ElementWarehouse::ADD_CHANNEL_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::FACEBOOK_CHANNEL_CARD).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ADD_FACEBOOK_CHANNEL_BUTTON).click
	sleep 3
	$web_driver.switch_to.window( $web_driver.window_handles.last )
	sleep 3
	$web_driver.find_element(ElementWarehouse::FACEBOOK_EMAIL_FIELD).send_keys(TestUser.facebook_username)
	sleep 3
	$web_driver.find_element(ElementWarehouse::FACEBOOK_PASSWORD_FIELD).send_keys(TestUser.facebook_password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::FACEBOOK_LOG_IN_BUTTON).click
	sleep 6
	$web_driver.find_element(ElementWarehouse::FACEBOOK_CONTINUE_AS_BUTTON).click
	sleep 7
	$web_driver.switch_to.window( $web_driver.window_handles.first )
	sleep 3
	$web_driver.find_element(ElementWarehouse::FACEBOOK_SELECT_PAGE).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::CONFIRM_ADD_FACEBOOK).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::ADD_FACEBOOK_DONE_BUTTON).click
	sleep 3
end