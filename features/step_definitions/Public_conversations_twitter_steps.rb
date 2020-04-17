Given('A customer is contacting us via Twitter') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::NOT_NOW_NOTIFICATION).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONVERSATIONS_TAB).click
end

Then('I start a Twitter conversation') do
  open_new_tab
  $web_driver.navigate.to 'https://twitter.com/login'
  sleep 3
  $web_driver.find_element(ElementWarehouse::TWITTER_USERNAME).send_keys(TestUser.twitter_username)
  sleep 3
  $web_driver.find_element(ElementWarehouse::TWITTER_PASSWORD).send_keys(TestUser.twitter_password)
  sleep 3
  $web_driver.find_element(ElementWarehouse::TWITTER_SIGN_IN_BUTTON).click
  sleep 3
  $web_driver.find_element(ElementWarehouse::TWEET_FIELD).send_keys('Tweet One')
  sleep 5
  $web_driver.find_element(ElementWarehouse::TWEET_BUTTON).click
  sleep 3
  $web_driver.find_element(ElementWarehouse::MORE_BUTTON).click
  sleep 3
  $web_driver.find_element(ElementWarehouse::LOG_OUT_TWITTER).click
  sleep 3
  $web_driver.find_element(ElementWarehouse::CONFIRM_LOGOUT_TWITTER).click
  sleep 5
  $web_driver.switch_to.window( $web_driver.window_handles.first )
  open_new_tab
  $web_driver.navigate.to 'https://twitter.com/login'
  sleep 5
  $web_driver.find_element(ElementWarehouse::TWITTER_USERNAME_1).send_keys(TestUser.twitter_username_1)
  sleep 3
  $web_driver.find_element(ElementWarehouse::TWITTER_PASSWORD_1).send_keys(TestUser.twitter_password_1)
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