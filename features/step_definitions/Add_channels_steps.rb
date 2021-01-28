# frozen_string_literal: true

wait = Selenium::WebDriver::Wait.new(timeout: 80)

Then('I add WebMessage') do
	$web_driver.find_element(ElementWarehouse::CHANNELS_TAB).click
	$web_driver.find_element(ElementWarehouse::ACTIVE_CHANNELS_TAB)
	$web_driver.page_source.include? ' No channels have been added yet. Once added and activated they will show here.'
	$web_driver.find_element(ElementWarehouse::EMPTY_CHANNELS_AVATAR)
	$web_driver.find_element(ElementWarehouse::INACTIVE_CHANNELS_TAB).click
	$web_driver.page_source.include? 'Inactive Channels'
	$web_driver.page_source.include? ' Any channels you may want to deactivate temporarily from hi.guru and keep its settings and data will appear here.'
	$web_driver.find_element(ElementWarehouse::SEARCH_YOUR_CHANNELS)
	sleep 3
	$web_driver.find_element(ElementWarehouse::ACTIVE_CHANNELS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ADD_CHANNEL_BUTTON).click
	sleep 6
	$web_driver.page_source.include? 'Website & Mobile'
	$web_driver.page_source.include? 'Instant Messaging'
	$web_driver.page_source.include? 'Text (SMS)'
	$web_driver.page_source.include? 'Other Channels'
	$web_driver.find_element(ElementWarehouse::SELECT_WEB_MESSAGE).click
	sleep 3
	$web_driver.page_source.include? 'Start a conversation with your website visitors'
	$web_driver.page_source.include? 'Setup and add hi.guru WebMessage widget to your website in minutes.'
	$web_driver.find_element(ElementWarehouse::SWIPE_WEBMESSAGE_POP_UP).click
	$web_driver.page_source.include? 'Enhance customer service and engagement'
	$web_driver.page_source.include? 'Give customers a greater experience by being accessible to their needs.'
	$web_driver.find_element(ElementWarehouse::ADD_WEBMESSAGE_POP_UP).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ADD_WEBMESSAGE_1).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CHANNEL_DISPLAY_NAME_FIELD).send_keys('Webmessage Channel')
	sleep 3
	$web_driver.find_element(ElementWarehouse::SETUP_SELECT_JAVASCRIPT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SETUP_SELECT_WORDPRESS).click
	$web_driver.find_element(ElementWarehouse::DOWNLOAD_PLUGIN)
	sleep 3
	$web_driver.find_element(ElementWarehouse::SETUP_SELECT_JAVASCRIPT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::INSTALLATION_INSTR_EMAIL_FIELD).send_keys(TestUser.gmail_email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::WEB_MESSAGE_ADD_CHANNEL_2).click
	sleep 3
	$web_driver.page_source.include? 'Webmessage Channel'
	$web_driver.find_element(ElementWarehouse::WEB_MESSAGE_DROP_DOWN).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::WEB_MESSAGE_SETTINGS).click
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
	$web_driver.find_element(ElementWarehouse::WEB_MESSAGE_CUSTOMIZE_TAB).click
	$web_driver.page_source.include? 'Widget Appearance'
	$web_driver.page_source.include? 'Widget Preview'
	$web_driver.page_source.include? 'Widget Colour'
	$web_driver.find_element(ElementWarehouse::WEB_MESSAGE_SECURITY_TAB).click
	$web_driver.page_source.include? 'Security'
	$web_driver.page_source.include? 'Whitelist Domains'
	$web_driver.page_source.include? 'Whitelist domains to make sure your hi.guru WebMessage widget can only display on the website URLs added'
	$web_driver.find_element(ElementWarehouse::WEB_WHITELIST_MANAGE_BUTTON).click
	$web_driver.page_source.include? 'Whitelisted Domains'
	$web_driver.find_element(ElementWarehouse::WHITELIST_DOMAIN_CANCEL_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::WEB_WHITELIST_MANAGE_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ADD_DOMAIN_FIELD).send_keys('https://hi.guru/')
	$web_driver.page_source.include? 'Please enter a valid web domain.'
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
	$web_driver.find_element(ElementWarehouse::WEB_WHITELIST_MANAGE_TOGGLE).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::WEB_WHITELIST_MANAGE_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::REMOVE_DOMAIN).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::REMOVE_DOMAIN).click
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
	$web_driver.page_source.include? 'Are you sure you want to remove the web-sdk channel "Webmessage Channel"?'
	$web_driver.page_source.include? 'Once this channel is removed, you will no longer be able to exchange conversations through this channel.'
	sleep 3
	$web_driver.find_element(ElementWarehouse::REMOVE_WEB_MESSAGE_CANCEL_BUTTON)
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONFIRM_REMOVE_WEB_CHANNEL).click
	sleep 3
end

Then('I add Twitter') do
	$web_driver.find_element(ElementWarehouse::ADD_CHANNEL_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::TWITTER_CHANNEL).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ADD_TWITTER_CHANNEL_BUTTON).click
	$web_driver.page_source.include? 'This Channel is a premium integration supported by hi.guru'
	$web_driver.page_source.include? '$13 per channel per month'
	$web_driver.find_element(ElementWarehouse::CONFIRM_PREMIUM_TWITTER).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::TWITTER_USERNAME).send_keys(TestUser.twitter_username)
	sleep 3
	$web_driver.find_element(ElementWarehouse::TWITTER_PASSWORD).send_keys(TestUser.twitter_password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::AUTHORIZE_APP_BUTTON).click
	$web_driver.page_source.include? 'Enable Direct Conversations'
	$web_driver.page_source.include? 'When this is enabled you will receive direct messages to this account as hi.guru Conversations.'
	$web_driver.page_source.include? 'Enable Public Conversations'
	$web_driver.find_element(ElementWarehouse::CONFIRM_ADD_TWITTER).click
	$web_driver.page_source.include? 'KhivaKaXhoseni'
	$web_driver.page_source.include? 'Linked on'
	$web_driver.find_element(ElementWarehouse::TWITTER_DROP_DOWN).click
	sleep 3
	$web_driver.page_source.include? 'Deactivate Channel'
	$web_driver.page_source.include? 'Remove Channel'
	$web_driver.find_element(ElementWarehouse::REMOVE_TWITTER_CHANNEL).click
	$web_driver.page_source.include? 'Are you sure you want to remove the twitter channel "KhivaKaXhoseni"?'
	$web_driver.page_source.include? 'Once this channel is removed, you will no longer be able to exchange conversations through this channel.'
	sleep 3
	$web_driver.find_element(ElementWarehouse::REMOVE_TWITTER_CANCEL_BUTTON)
	$web_driver.find_element(ElementWarehouse::CONFIRM_REMOVE_TWITTER_CHANNEL).click
	$web_driver.page_source.include? ' No channels have been added yet. Once added and activated they will show here.'
	$web_driver.find_element(ElementWarehouse::ACTIVE_CHANNELS_TAB)
	$web_driver.find_element(ElementWarehouse::EMPTY_CHANNELS_AVATAR)
end

Then('I add Facebook') do
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
	wait.until { $web_driver.find_element(ElementWarehouse::FACEBOOK_SELECT_PAGE).displayed? }
	$web_driver.find_element(ElementWarehouse::FACEBOOK_SELECT_PAGE).click
	$web_driver.page_source.include? 'Enable Direct Conversations'
	$web_driver.page_source.include? 'When this is enabled you will receive direct messages to this page as hi.guru Conversations.'
	$web_driver.page_source.include? 'Enable Public Conversations'
	$web_driver.page_source.include? 'When this is enabled you will receive Comments and Visititor posts to this page as hi.guru Public Conversations.'
	$web_driver.find_element(ElementWarehouse::CONFIRM_ADD_FACEBOOK).click
	$web_driver.page_source.include? 'Remove'
	$web_driver.find_element(ElementWarehouse::ADD_FACEBOOK_DONE_BUTTON).click
	sleep 3
	$web_driver.page_source.include? 'New_Day'
	$web_driver.find_element(ElementWarehouse::CHECK_FACEBOOK_AVATAR)
	sleep 3
	$web_driver.find_element(ElementWarehouse::FACEBOOK_DROP_DOWN).click
	$web_driver.page_source.include? 'Deactivate Channel'
	$web_driver.page_source.include? 'Reauthorise Channel'
	$web_driver.page_source.include? 'Remove Channel'
	$web_driver.find_element(ElementWarehouse::REMOVE_FACEBOOK_CHANNEL).click
	$web_driver.page_source.include? 'Are you sure you want to remove the facebook channel'
	$web_driver.page_source.include? 'Once this channel is removed, you will no longer be able to exchange conversations through this channel.'
	$web_driver.page_source.include? 'Cancel'
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONFIRM_REMOVE_FACEBOOK_CHANNEL).click
	sleep 3
	$web_driver.page_source.include? ' No channels have been added yet. Once added and activated they will show here.'
end