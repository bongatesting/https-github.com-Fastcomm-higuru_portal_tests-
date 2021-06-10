# frozen_string_literal: true

wait = Selenium::WebDriver::Wait.new(timeout: 30)

Then('I add a Facebook page') do
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
	sleep 4
	wait.until { $web_driver.find_element(ElementWarehouse::FACEBOOK_SELECT_PAGE).displayed? }
	$web_driver.find_element(ElementWarehouse::FACEBOOK_SELECT_PAGE).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONFIRM_ADD_FACEBOOK).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ADD_FACEBOOK_DONE_BUTTON).click
	sleep 5
end

Then('I check the DM volume before starting a Facebook chat') do
	$web_driver.find_element(ElementWarehouse::STATS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::STATS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::STATS_VIEW_MORE).click
	sleep 3
	$web_driver.page_source.include? 'Conversation Volume'
	sleep 3
	$web_driver.page_source.include? 'Total DM Message Volume'
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONVERSATION_VOLUME_DROP_DOWN).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONVO_VOLUME_TODAY).click
	sleep 3
	@total_dm_count = $web_driver.find_element(ElementWarehouse::TOTAL_DM_COUNT).text.to_i
	sleep 4
end

Then('I check the DM count after the message is sent and delivered') do
	open_new_tab
	$web_driver.get 'https://www.facebook.com/'
	sleep 7
	$web_driver.switch_to.window( $web_driver.window_handles.last )
	#$web_driver.find_element(ElementWarehouse::FACEBOOK_EMAIL_FIELD).send_keys(TestUser.facebook_username)
	#$web_driver.find_element(ElementWarehouse::FACEBOOK_PASSWORD_FIELD).send_keys(TestUser.facebook_password)
	#$web_driver.find_element(ElementWarehouse::FACEBOOK_LOGIN).click
	$web_driver.find_element(ElementWarehouse::FACEBOOK_MESSENGER_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::MESSENGER_SEARCH_BUTTON).send_keys('New_Day')
	sleep 3
	$web_driver.find_element(ElementWarehouse::DISCOVER_NEW_DAY).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::MESSENGER_MESSAGE_FIELD).send_keys('Hellow')
	sleep 4
	$web_driver.find_element(ElementWarehouse::MESSENGER_SEND_BUTTON).click
	sleep 4
	$web_driver.switch_to.window( $web_driver.window_handles.first )
	sleep 3
	$web_driver.navigate.refresh
	sleep 3
	$web_driver.find_element(ElementWarehouse::STATS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::STATS_VIEW_MORE).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONVERSATION_VOLUME_DROP_DOWN).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONVO_VOLUME_TODAY).click
	sleep 3
	new_total_dm_count = $web_driver.find_element(ElementWarehouse::TOTAL_DM_COUNT).text.to_i
	expect(new_total_dm_count).to eq(@total_dm_count + 1)
	sleep 3
end

Then('I resolve the chat and remove the Facebook page') do
	$web_driver.find_element(ElementWarehouse::CONVERSATIONS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::OPEN_THE_CHAT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::RESOLVE_DROP_DOWN).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::RESOLVE_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::GO_BACK_TO_DASHBOARD).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CHANNELS_TAB).click
	sleep 5
	$web_driver.find_element(ElementWarehouse::FACEBOOK_DROP_DOWN).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::REMOVE_FACEBOOK_CHANNEL).click
	sleep 5
	$web_driver.find_element(ElementWarehouse::CONFIRM_REMOVE_FACEBOOK_CHANNEL).click
	sleep 5
end

Then('I add a Twitter channel') do
	$web_driver.find_element(ElementWarehouse::CHANNELS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ADD_CHANNEL_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::TWITTER_CHANNEL).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ADD_TWITTER_CHANNEL_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONFIRM_PREMIUM_TWITTER).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::TWITTER_USERNAME).send_keys(TestUser.twitter_username)
	sleep 3
	$web_driver.find_element(ElementWarehouse::TWITTER_PASSWORD).send_keys(TestUser.twitter_password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::AUTHORIZE_APP_BUTTON).click
	sleep 5
	$web_driver.find_element(ElementWarehouse::CONFIRM_ADD_TWITTER).click
	sleep 7
	sleep 3
	$web_driver.find_element(ElementWarehouse::STATS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::STATS_VIEW_MORE).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONVERSATION_VOLUME_DROP_DOWN).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONVO_VOLUME_TODAY).click
	sleep 3
	@total_dm_count = $web_driver.find_element(ElementWarehouse::TOTAL_DM_COUNT).text.to_i
	sleep 3
end

Then('I start a Twitter chat') do
	open_new_tab
	$web_driver.get 'https://twitter.com/login'
	$web_driver.find_element(ElementWarehouse::TWITTER_MORE_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::LOG_OUT_TWITTER).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONFIRM_LOGOUT_TWITTER).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::TWITTER_LOGIN_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::TWITTER_USERNAME_FIELD).send_keys(TestUser.twitter_username_1)
	sleep 3
	$web_driver.find_element(ElementWarehouse::TWITTER_PASSWORD_FIELD).send_keys(TestUser.twitter_password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::TWITTER_LOGIN_BUTTON_1).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::TWITTER_DM_BUTTON).click
	sleep 3
	#$web_driver.find_element(ElementWarehouse::TWITTER_DM_SEARCH_FIELD).send_keys('xhosamama')
	sleep 3
	$web_driver.find_element(ElementWarehouse::CHOOSE_TWITTER_USER).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::TWITTER_DM_MESSAGE_FIELD).send_keys('DM Volume, Test')
	sleep 3
	$web_driver.find_element(ElementWarehouse::TWITTER_SEND_MESSAGE).click
	sleep 4
end

Then('I check the Twitter DM count') do
	$web_driver.switch_to.window( $web_driver.window_handles.first )
	sleep 3
	$web_driver.navigate.refresh
	$web_driver.find_element(ElementWarehouse::STATS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::STATS_VIEW_MORE).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONVERSATION_VOLUME_DROP_DOWN).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONVO_VOLUME_TODAY).click
	sleep 3
	new_total_dm_count = $web_driver.find_element(ElementWarehouse::TOTAL_DM_COUNT).text.to_i
	expect(new_total_dm_count).to eq(@total_dm_count + 1)
	sleep 4
end

Then('I resolve the chat and remove the Twitter page') do
	$web_driver.find_element(ElementWarehouse::CONVERSATIONS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::OPEN_THE_CHAT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::RESOLVE_DROP_DOWN).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::RESOLVE_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::GO_BACK_TO_DASHBOARD).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CHANNELS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::TWITTER_DROP_DOWN).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::REMOVE_TWITTER_CHANNEL).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONFIRM_REMOVE_TWITTER_CHANNEL).click
	sleep 5
end