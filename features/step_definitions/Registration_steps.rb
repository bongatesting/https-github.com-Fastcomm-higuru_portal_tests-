Given('I am viewing the log in page') do
	$web_driver.navigate.to "https://#{ENV['HOST']}.hi.guru/"
end

When('I enter an Invalid Email') do
	sleep 6
	$web_driver.find_element(ElementWarehouse::LOGIN_TEXT)
	$web_driver.find_element(ElementWarehouse::EMAIL_TEXT)
	$web_driver.find_element(ElementWarehouse::ENTER_PASSWORD_TEXT)
	sleep 2
	$web_driver.find_element(ElementWarehouse::SIGN_UP_BUTTON).click
	sleep 10
	$web_driver.find_element(ElementWarehouse::BUSINESS_EMAIL_FIELD).send_keys('incorrect!test.co')
	sleep 6
	if $web_driver.find_elements(ElementWarehouse::INVALID_EMAIL_TEXT).first
		$stdout.puts 'Incorrect test Passed'.green
	else
		$stdout.puts 'Incorrect test Failed'.red
	end
end

Then('I Sign up with a valid Email') do
	$web_driver.find_element(ElementWarehouse::BUSINESS_EMAIL_FIELD).clear
	$web_driver.find_element(ElementWarehouse::BUSINESS_EMAIL_FIELD).send_keys(TestUser.test_user_2_email)
	sleep 4
	$web_driver.find_element(ElementWarehouse::BUSINESS_PASSWORD_FIELD).send_keys(TestUser.hi_guru_password)
	wait_for_sign_up_checkbox
	$web_driver.find_element(ElementWarehouse::SIGN_UP_CHECKBOX).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::REGISTER_NEXT_BUTTON_1).click
end

Then('I sign into outlook and fetch the valid OTP') do
	open_new_tab
	$web_driver.get('https://google.co.za/')
	sleep 3
	$web_driver.find_element(ElementWarehouse::GMAIL_BUTTON).click
	sleep 4
	if $web_driver.find_elements(ElementWarehouse::GMAIL_SIGN_IN_BUTTON).first
		$web_driver.find_elements(ElementWarehouse::GMAIL_SIGN_IN_BUTTON).first.click
		$web_driver.close
		$web_driver.switch_to.window( $web_driver.window_handles.last )
	end
	sleep 1
	$web_driver.find_element(ElementWarehouse::GMAIL_EMAIL_FIELD).send_keys(TestUser.email)
	sleep 2
	$web_driver.find_element(ElementWarehouse::GMAIL_NEXT_BUTTON).click
	sleep 1
	$web_driver.find_element(ElementWarehouse::GMAIL_PASSWORD_FIELD).send_keys(TestUser.outlook_password)
	sleep 1
	$web_driver.find_element(ElementWarehouse::GMAIL_PASS_NEXT_BUTTON).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::RECEIVED_MAIL).click
	CODE = $web_driver.find_element(ElementWarehouse::VERIFICATION_CODE).text
	$stdout.puts(CODE)
	sleep 4
	$web_driver.switch_to.window( $web_driver.window_handles.first )
	sleep 3
	$web_driver.find_element(ElementWarehouse::OTP_FIELD).send_keys(CODE)
	sleep 4
	$web_driver.find_element(ElementWarehouse::OTP_NEXT_BUTTON).click
end

Then('I create my profile') do
	$web_driver.find_element(ElementWarehouse::OTP_NEXT_BUTTON).click
	$web_driver.find_element(ElementWarehouse::CREATE_YOUR_PROFILE_TEXT)
	sleep 4
	$web_driver.find_element(ElementWarehouse::ENTER_ACCOUNT_NAME_FIELD).click
	$web_driver.find_element(ElementWarehouse::ENTER_ACCOUNT_NAME_FIELD).send_keys(TestUser.name)
	$web_driver.find_element(ElementWarehouse::REGISTER_NEXT_BUTTON_2).click
	wait_for_enter_name_field
	$web_driver.find_element(ElementWarehouse::ENTER_NAME_FIELD).click
	$web_driver.find_element(ElementWarehouse::ENTER_NAME_FIELD).send_keys(TestUser.name)
	sleep 4
	$web_driver.find_element(ElementWarehouse::ENTER_WEBSITE_NAME_FIELD).click
	$web_driver.find_element(ElementWarehouse::ENTER_WEBSITE_NAME_FIELD).send_keys('test.com')
	sleep 4
	$web_driver.find_element(ElementWarehouse::REGISTER_NEXT_BUTTON_3).click
	sleep 6
	$web_driver.find_element(ElementWarehouse::ORGANISATION_SIZE_FIELD).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::ORGANISATION_SIZE_OPTION).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::CATEGORY_FIELD).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::CATEGORY_OPTION).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::YOUR_ROLE_FIELD).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::YOUR_ROLE_OPTION).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::REGISTER_NEXT_BUTTON_4).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::ACCOUNT_WALKTHROUGH_TEXT)
	$web_driver.find_element(ElementWarehouse::ACCOUNT_WALKTHROUGH_NEXT_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CU_IMAGE_WALKTHROUGH_TEXT)
	sleep 2
	$web_driver.find_element(ElementWarehouse::CU_WALKTHROUGH_BACK_BUTTON)
	sleep 2
	$web_driver.find_element(ElementWarehouse::CU_WALKTHROUGH_NEXT_BUTTON).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::CONVERSATION_WALKTHROUGH_TEXT)
	$web_driver.find_element(ElementWarehouse::CONVERSATION_WALKTHROUGH_BACK_BUTTON)
	$web_driver.find_element(ElementWarehouse::CONVERSATION_WALKTHROUGH_NEXT_BUTTON).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::STATS_WALKTHROUGH_TEXT)
	$web_driver.find_element(ElementWarehouse::STATS_WALKTHROUGH_BACK_BUTTON)
	$web_driver.find_element(ElementWarehouse::STATS_WALKTHROUGH_NEXT_BUTTON).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::CHANNELS_WALKTHROUGH_TEXT)
	sleep 2
	$web_driver.find_element(ElementWarehouse::CHANNELS_WALKTHROUGH_BACK_BUTTON)
	sleep 4
	$web_driver.find_element(ElementWarehouse::CHANNELS_WALKTHROUGH_NEXT_BUTTON).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::TEAMS_WALKTHROUGH_TEXT)
	sleep 4
	$web_driver.find_element(ElementWarehouse::TEAMS_WALKTHROUGH_BACK_BUTTON)
	sleep 6
	$web_driver.find_element(ElementWarehouse::TEAMS_WALKTHROUGH_NEXT_BUTTON).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::PEOPLE_WALKTHROUGH_TEXT)
	$web_driver.find_element(ElementWarehouse::PEOPLE_WALKTHROUGH_BACK_BUTTON)
	$web_driver.find_element(ElementWarehouse::PEOPLE_WALKTHROUGH_NEXT_BUTTON).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::DOC_LIBRARY_WALKTHROUGH_TEXT)
	$web_driver.find_element(ElementWarehouse::DOC_LIBRARY_WALKTHROUGH_BACK_BUTTON)
	$web_driver.find_element(ElementWarehouse::DOC_LIBRARY_WALKTHROUGH_NEXT_BUTTON).click
	sleep 2
	# $web_driver.find_element(ElementWarehouse::CONVO_HISTORY_WALKTHROUGH_TEXT)
	$web_driver.find_element(ElementWarehouse::CANNED_REPLY_WALKTHROUGH_BACK_BUTTON)
	$web_driver.find_element(ElementWarehouse::CANNED_REPLY_WALKTHROUGH_NEXT_BUTTON).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::CONVO_HISTORY_WALKTHROUGH_TEXT)
	$web_driver.find_element(ElementWarehouse::CONVO_HISTORY_WALKTHROUGH_BACK_BUTTON)
	$web_driver.find_element(ElementWarehouse::CONVO_HISTORY_WALKTHROUGH_NEXT_BUTTON).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::BOTS_WALKTHROUGH_TEXT)
	$web_driver.find_element(ElementWarehouse::BOTS_WALKTHROUGH_BACK_BUTTON)
	$web_driver.find_element(ElementWarehouse::BOTS_WALKTHROUGH_DONE_BUTTON).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::LETS_GET_STARTED_TEXT_BODY)
	$web_driver.find_element(ElementWarehouse::LETS_GET_STARTED_SIDE_ARROW).click
	$web_driver.find_element(ElementWarehouse::START_ENGAGING_TEXT)
	$web_driver.find_element(ElementWarehouse::START_ENGAGING_TEXT_BODY)
	$web_driver.find_element(ElementWarehouse::WALKTHROUGH_GET_STARTED_BUTTON).click
	$web_driver.find_element(ElementWarehouse::CHANNEL_TITLE_TEXT)
end

Then('I click on Conversation Portal')do
	$web_driver.find_element(ElementWarehouse::CONVERSATIONS_TAB).click
		sleep 4
	$web_driver.find_element(ElementWarehouse::INBOUND_TITLE_TEXT)
	$web_driver.find_element(ElementWarehouse::INBOUND_TEXT_BODY)
	$web_driver.find_element(ElementWarehouse::INBOUND_GOT_IT_BUTTON).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::OUTBOUND_TITLE_TEXT)
	$web_driver.find_element(ElementWarehouse::OUTBOUND_TEXT_BODY)
	$web_driver.find_element(ElementWarehouse::OUTBOUND_GOT_IT_BUTTON).click
end
