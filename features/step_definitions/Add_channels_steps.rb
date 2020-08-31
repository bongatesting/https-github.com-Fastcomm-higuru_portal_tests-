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
	$web_driver.find_element(ElementWarehouse::WEB_MESSAGE_NAME_FIELD).send_keys('Webmessage')
	sleep 3
	$web_driver.find_element(ElementWarehouse::WEB_MESSAGE_SEND_LINK).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::WEB_MESSAGE_DONE_BUTTON).click
	sleep 4
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