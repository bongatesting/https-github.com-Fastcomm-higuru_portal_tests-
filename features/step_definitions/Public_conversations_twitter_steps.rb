Given('A customer is contacting us via Twitter') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 3
end

Then('I Add the channel') do
	$web_driver.find_element(ElementWarehouse::CHANNELS_TAB).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::ADD_CHANNEL_BUTTON).click
	sleep 6
	$web_driver.find_element(ElementWarehouse::TWITTER_CHANNEL).click
	sleep 6
	$web_driver.find_element(ElementWarehouse::ADD_TWITTER_CHANNEL_BUTTON).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::CONFIRM_BUTTON).click
	sleep 6
	$web_driver.find_element(ElementWarehouse::TWITTER_EMAIL_INPUT).click
	$web_driver.find_element(ElementWarehouse::TWITTER_EMAIL_INPUT).type(TestUser.twitter_username)
	sleep 2
	$web_driver.find_element(ElementWarehouse::TWITTER_PASSWORD_INPUT).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::TWITTER_PASSWORD_INPUT).type(TestUser.twitter_password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::AUTHORIZE_APP_BUTTON).click
	sleep 10
	$web_driver.find_element(ElementWarehouse::ADD_BUTTON).click
end

Then('I start a Twitter conversation') do
	open_new_tab
	$web_driver.navigate.to 'https://twitter.com/login'
	sleep 3
	#$web_driver.find_element(ElementWarehouse::TWITTER_USERNAME).send_keys(TestUser.twitter_username)
	#sleep 3
	#$web_driver.find_element(ElementWarehouse::TWITTER_PASSWORD).send_keys(TestUser.twitter_password)
	#sleep 3
	#$web_driver.find_element(ElementWarehouse::TWITTER_SIGN_IN_BUTTON).click
	#sleep 3
	$web_driver.find_element(ElementWarehouse::TWEET_FIELD).send_keys('Tweet One')
	sleep 5
	$web_driver.find_element(ElementWarehouse::TWEET_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::TWITTER_MORE_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::LOG_OUT_TWITTER).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONFIRM_LOGOUT_TWITTER).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::TWITTER_USERNAME_1).send_keys(TestUser.twitter_username_1)
	sleep 3
	$web_driver.find_element(ElementWarehouse::TWITTER_PASSWORD_1).send_keys(TestUser.twitter_password_1)
	sleep 5
	$web_driver.switch_to.window( $web_driver.window_handles.first )
	sleep 5

	sleep 3
	$web_driver.find_element(ElementWarehouse::TWITTER_SIGN_IN_BUTTON_1).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::TWITTER_SEARCH_BUTTON).send_keys(TestUser.twitter_username)
	sleep 3
	$web_driver.find_element(ElementWarehouse::SELECT_TWITTER_USER).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::TWEET_ONE).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::REPLY_TO_TWEET_ONE).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::TWEET_BUTTON_1).click
	sleep 3
	$web_driver.switch_to.window( $web_driver.window_handles.first )
end