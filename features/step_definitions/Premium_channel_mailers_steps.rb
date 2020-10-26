Given('I login')do
	$web_driver.navigate.to "https://#{ENV['HOST']}.hi.guru/"
end

Then('I add the premium channel')do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 10
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
	sleep 6
	$web_driver.execute_script( "window.open()" )
	$web_driver.switch_to.window( $web_driver.window_handles.last )
	$web_driver.get 'https://mail.google.com/'
	sleep 4
	$web_driver.find_element(ElementWarehouse::GMAIL_EMAIL_FIELD).send_keys(TestUser.gmail_email)
	sleep 2
	$web_driver.find_element(ElementWarehouse::GMAIL_NEXT_BUTTON).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::GMAIL_PASSWORD_FIELD).type(TestUser.gmail_password)
	sleep 2
	$web_driver.find_element(ElementWarehouse::GMAIL_PASSWORD_NEXT_BUTTON).click
	sleep 10
	$web_driver.switch_to.window( $web_driver.window_handles.last )
	sleep 3
	$web_driver.find_element(ElementWarehouse::PREMIUM_MAILER_TEXT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::DLT_1_MAIL_GMAIL).click
	sleep 5
end

Then('I delete the premium channel')do
	$web_driver.switch_to.window( $web_driver.window_handles.first )
	sleep 3
	$web_driver.find_element(ElementWarehouse::CHANNEL_OPTIONS).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::DELETE_CHANNEL).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::CONFIRM_DELETE_BUTTON).click
	sleep 10
	$web_driver.switch_to.window( $web_driver.window_handles.last )
	sleep 3
	$web_driver.find_element(ElementWarehouse::PREMIUM_MAILER_2).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::PREMIUM_MAILER_TEXT)
end