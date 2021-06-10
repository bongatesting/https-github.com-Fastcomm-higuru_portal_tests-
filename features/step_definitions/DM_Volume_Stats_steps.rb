# frozen_string_literal: true

wait = Selenium::WebDriver::Wait.new(timeout: 30)

Then('check the DM volume and start a Facebook chat') do
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
	$web_driver.find_element(ElementWarehouse::FACEBOOK_EMAIL_FIELD).send_keys(TestUser.facebook_username)
	sleep 3
	$web_driver.find_element(ElementWarehouse::FACEBOOK_PASSWORD_FIELD).send_keys(TestUser.facebook_password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::FACEBOOK_LOGIN).click
	sleep 3
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