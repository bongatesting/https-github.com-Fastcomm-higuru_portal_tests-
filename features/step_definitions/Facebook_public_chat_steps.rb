Given('I go to the log in page') do
	$web_driver.navigate.to "https://#{ENV['HOST']}.hi.guru/"
end

Then('I login to my account') do
	$web_driver.navigate.to "https://#{ENV['HOST']}.hi.guru/"
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).click
	# $web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.hi_guru_email)
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.test_user_1_email)
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).click
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.hi_guru_password)
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 6
	$web_driver.find_element(ElementWarehouse::LOGIN_ACCOUNT_SELECT).click
	sleep 6
	$web_driver.find_element(ElementWarehouse::LOGIN_CU_SELECT).click
end

Then('I create a facebook post') do
	$web_driver.execute_script( "window.open()" )
	$web_driver.switch_to.window( $web_driver.window_handles.last )
	$web_driver.get 'https://www.facebook.com/'
	sleep 4
	$web_driver.find_element(ElementWarehouse::FACEBOOK_EMAIL_FIELD).send_keys(TestUser.email)
	sleep 4
	$web_driver.find_element(ElementWarehouse::FACEBOOK_PASSWORD_FIELD).type(TestUser.new_password)
	sleep 2
	if $web_driver.find_elements(ElementWarehouse::FACEBOOK_LOG_IN_BUTTON).first
		$web_driver.find_elements(ElementWarehouse::FACEBOOK_LOG_IN_BUTTON).first.click
	elsif $web_driver.find_elements(ElementWarehouse::FACEBOOK_LOG_IN_BUTTON_2).first
		$web_driver.find_elements(ElementWarehouse::FACEBOOK_LOG_IN_BUTTON_2).first.click
		end
	wait_for_search_field
	$web_driver.find_element(ElementWarehouse::SEARCH_FIELD).click
	# $web_driver.find_element(ElementWarehouse::SEARCH_FIELD).type('QA 9020 4')
	$web_driver.find_element(ElementWarehouse::SEARCH_FIELD).type('Prod 8000')
	sleep 10
	# $web_driver.find_element(ElementWarehouse::PAGE_OPTION).click
	$web_driver.find_element(ElementWarehouse::PAGE_OPTION_2).click
	sleep 10
	# $web_driver.find_elements(ElementWarehouse::FACEBOOK_PAGE).click
	$web_driver.find_elements(ElementWarehouse::FACEBOOK_PAGE_2).first.click
	sleep 10
	$web_driver.find_element(ElementWarehouse::VIEW_AS_VISITOR).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::CREATE_POST_BUTTON).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::POST_FIELD).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::POST_FIELD).send_keys(generate_random_string('test comment'))
	sleep 2
	$web_driver.find_element(ElementWarehouse::POST_BUTTON_2).click
	sleep 4
end

Then('receive the public chat') do
	$web_driver.switch_to.window( $web_driver.window_handles.first )
	$web_driver.find_element(ElementWarehouse::CONVERSATIONS_TAB).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::PUBLIC_TAB).click
	wait_for_facebook_public_chat
	$web_driver.find_element(ElementWarehouse::PUBLIC_CHAT).click
end

Then('I reauthorise my facebook page') do
	sleep 6
	$web_driver.find_element(ElementWarehouse::CONVO_NAVIGATION_BUTTON).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::CHANNELS_TAB).click
	sleep 6
	# $web_driver.find_element(ElementWarehouse::CHANNEL_DROP_DOWN).click
	$web_driver.find_element(ElementWarehouse::CHANNEL_DROP_DOWN_2).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::CHANNEL_REAUTHORISE).click
	sleep 6
	$web_driver.switch_to.window( $web_driver.window_handles.last )
	sleep 4
	# $web_driver.find_element(ElementWarehouse::FACEBOOK_EMAIL_FIELD).send_keys(TestUser.email)
	sleep 4
	# $web_driver.find_element(ElementWarehouse::FACEBOOK_PASSWORD_FIELD).type(TestUser.new_password)
	sleep 2
	# $web_driver.find_element(ElementWarehouse::FACEBOOK_LOGIN_BUTTON_3).click
	sleep 6
	$web_driver.find_element(ElementWarehouse::FACEBOOK_CONTINUE_AS_BUTTON).click
	$web_driver.switch_to.window( $web_driver.window_handles.first )
end