Given('I go to the log in page') do
	$web_driver.navigate.to "https://#{ENV['HOST']}.hi.guru/"
end

Then('I login to my account and add a facebook page') do
	$web_driver.navigate.to "https://#{ENV['HOST']}.hi.guru/"
	sleep 3
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	wait_for_account_login_select
	$web_driver.find_element(ElementWarehouse::LOGIN_ACCOUNT_SELECT).click
	wait_for_company_unit
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_SELECT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CHANNELS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ADD_CHANNEL_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::FACEBOOK_CHANNEL_CARD).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::HOW_TO_SETUP_FACEBOOK).click
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
	$web_driver.page_source.include? 'Facebook Pages you Manage'
	$web_driver.page_source.include? 'Select page to add'
	#wait.until { $web_driver.find_element(ElementWarehouse::FACEBOOK_SELECT_PAGE).displayed? }
	$web_driver.find_element(ElementWarehouse::FACEBOOK_SELECT_PAGE).click
	$web_driver.page_source.include? 'Enable Direct Conversations'
	$web_driver.page_source.include? 'When this is enabled you will receive direct messages to this page as hi.guru Conversations.'
	$web_driver.page_source.include? 'Enable Public Conversations'
	$web_driver.find_element(ElementWarehouse::ENABLE_PUBLIC_CONVERSATIONS).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONFIRM_ADD_FACEBOOK).click
	$web_driver.page_source.include? 'Remove'
	$web_driver.find_element(ElementWarehouse::ADD_FACEBOOK_DONE_BUTTON).click
	sleep 3
	$web_driver.page_source.include? 'New_Day'
end

Then('I create a facebook post') do
	open_new_tab
	$web_driver.get 'https://www.facebook.com/'
	sleep 4
	#$web_driver.find_element(ElementWarehouse::FACEBOOK_EMAIL_FIELD).send_keys(TestUser.email)
	sleep 4
	#$web_driver.find_element(ElementWarehouse::FACEBOOK_PASSWORD_FIELD).type(TestUser.new_password)
	sleep 2
	if $web_driver.find_elements(ElementWarehouse::FACEBOOK_LOG_IN_BUTTON).first&.click
	elsif $web_driver.find_elements(ElementWarehouse::FACEBOOK_LOG_IN_BUTTON_2).first&.click
	end
	wait_for_search_field
	$web_driver.find_element(ElementWarehouse::SEARCH_FIELD).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SEARCH_FIELD).type('New_Day')
	sleep 3
	$web_driver.find_element(ElementWarehouse::SEARCH_FIELD).send_keys(:return)
	sleep 7
	$web_driver.find_element(ElementWarehouse::SELECT_NEW_DAY).click
	sleep 5
	$web_driver.find_element(ElementWarehouse::CREATE_FACEBOOK_POST).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::FACEBOOK_STATUS_FIELD).send_keys('Hello; How is Everybody doing?')
	sleep 3
	$web_driver.find_element(ElementWarehouse::POST_FACEBOOK_STATUS).click
	sleep 7
	$web_driver.find_element(ElementWarehouse::SWITCH_FACEBOOK_USER).click
	sleep 5
	$web_driver.find_element(ElementWarehouse::FACEBOOK_SELECT_MAIN_USER).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::FACEBOOK_COMMENT_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::FACEBOOK_COMMENT_FIELD).send_keys('Public Comment')
	sleep 3
	$web_driver.find_element(ElementWarehouse::FACEBOOK_COMMENT_FIELD).send_keys(:return)
end

Then('receive the public chat') do
	$web_driver.switch_to.window( $web_driver.window_handles.first )
	$web_driver.find_element(ElementWarehouse::CONVERSATIONS_TAB).click
	sleep 6
	$web_driver.find_element(ElementWarehouse::PUBLIC_CHAT_TAB).click
	wait_for_public_chat
	$web_driver.find_element(ElementWarehouse::PUBLIC_CHAT).click
end

Then('I download the current transcript then resolve and download my chat') do
	wait_for_download_icon
	$web_driver.find_element(ElementWarehouse::DOWNLOAD_ICON).click
	sleep 6
	$web_driver.find_element(ElementWarehouse::CURRENT_TRANSCRIPT).click
	sleep 6
	$web_driver.find_element(ElementWarehouse::RESOLVE_ICON).click
	sleep 6
	$web_driver.find_element(ElementWarehouse::RESOLVE_AND_DOWNLOAD).click
	# $web_driver.find_element(ElementWarehouse::RESOLVE_AND_DOWNLOAD_TOAST_2)
end

Then('I download the chat in the conversation history tab') do
	$web_driver.find_element(ElementWarehouse::HI_GURU_AVATAR).click
	sleep 6
	$web_driver.find_element(ElementWarehouse::CONVERSATION_HISTORY_TAB).click
	sleep 6
	$web_driver.find_element(ElementWarehouse::CONVO_HISTORY_PUBLIC_TAB).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::CONVO_HISTORY_PUBLIC_CHAT).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::CONVO_HISTORY_DOWNLOAD_ICON).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::CURRENT_TRANSCRIPT).click
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