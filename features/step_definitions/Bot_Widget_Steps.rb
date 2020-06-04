# frozen_string_literal: true

wait = Selenium::WebDriver::Wait.new(timeout: 20)

Then('I click on the WIDGET') do
	$web_driver.find_element(ElementWarehouse::WIDGET).click
	$web_driver.find_element(ElementWarehouse::GET_STARTED_TEXT)
	$web_driver.find_element(ElementWarehouse::SUPPORT_TEXT)
	$web_driver.find_element(ElementWarehouse::PRODUCT_INFO_TEXT)
	$web_driver.find_element(ElementWarehouse::FEEDBACK_TEXT)
	$web_driver.find_element(ElementWarehouse::CHAT_WITH_US_TEXT)
end

Then('I click on the Fastcomm WIDGET and test the responses') do
	$web_driver.find_element(ElementWarehouse::FASTCOMM_WIDGET).click
	$web_driver.find_element(ElementWarehouse::WELCOME_FASTCOMM_TEXT)
	$web_driver.find_element(ElementWarehouse::MORE_FASTCOMM_BUTTON)
	$web_driver.find_element(ElementWarehouse::MEDIA_BUTTON)
	$web_driver.find_element(ElementWarehouse::CREATING_WITH_US_BUTTON)
	$web_driver.find_element(ElementWarehouse::CHATTING_TO_US_BUTTON)
	$web_driver.find_element(ElementWarehouse::OUR_SOLUTION_BUTTON).click
	$web_driver.find_element(ElementWarehouse::OUR_SOLUTION_RESPONSE_1)
	$web_driver.find_element(ElementWarehouse::FC_SOLUTION_RESPONSE_2)
	$web_driver.find_element(ElementWarehouse::FC_SOLUTION_RESPONSE_3)
	$web_driver.find_element(ElementWarehouse::OUR_SOLUTION_RESPONSE_4)
	$web_driver.find_element(ElementWarehouse::OUR_SOLUTION_RESPONSE_5)
	$web_driver.find_element(ElementWarehouse::HI_GURU_BUTTON)
	$web_driver.find_element(ElementWarehouse::HELLOTHING_BUTTON)
	$web_driver.find_element(ElementWarehouse::LATCH_BUTTON).click
	$web_driver.find_element(ElementWarehouse::LATCH_RESPONSE_1)
	$web_driver.find_element(ElementWarehouse::LATCH_RESPONSE_2)
	$web_driver.find_element(ElementWarehouse::LATCH_RESPONSE_3)
	$web_driver.find_element(ElementWarehouse::LATCH_RESPONSE_4)
	$web_driver.find_element(ElementWarehouse::LATCH_URL).click
	$web_driver.switch_to.window($web_driver.window_handles.last)
	$web_driver.find_element(ElementWarehouse::LATCH_SITE_TEXT)
	$web_driver.find_element(ElementWarehouse::LATCH_SIGN_IN)
	sleep 2
	$web_driver.close.last
	sleep 2
	$web_driver.switch_to.window($web_driver.window_handles.first)
	$web_driver.find_element(ElementWarehouse::NO_BUTTON)
	$web_driver.find_element(ElementWarehouse::YES_BUTTON).click
	$web_driver.find_element(ElementWarehouse::LATCH_YES_RESPONSE_1)
	$web_driver.find_element(ElementWarehouse::LATCH_YES_RESPONSE_2)
	$web_driver.find_element(ElementWarehouse::LATCH_YES_RESPONSE_3)
	$web_driver.find_element(ElementWarehouse::OUR_SOLUTION_BUTTON)
	$web_driver.find_element(ElementWarehouse::MEDIA_BUTTON)
	$web_driver.find_element(ElementWarehouse::CREATING_WITH_US_BUTTON)
	$web_driver.find_element(ElementWarehouse::CHATTING_TO_US_BUTTON)
	$web_driver.find_element(ElementWarehouse::MORE_FASTCOMM_BUTTON).click
	$web_driver.find_element(ElementWarehouse::ABOUT_FASTCOMM_RESPONSE_1)
	$web_driver.find_element(ElementWarehouse::ABOUT_FASTCOMM_RESPONSE_2)
	$web_driver.find_element(ElementWarehouse::ABOUT_FASTCOMM_RESPONSE_3)
	$web_driver.find_element(ElementWarehouse::ABOUT_FASTCOMM_RESPONSE_4)
	$web_driver.find_element(ElementWarehouse::ABOUT_FASTCOMM_RESPONSE_5)
	$web_driver.find_element(ElementWarehouse::ABOUT_FASTCOMM_RESPONSE_6)
	$web_driver.find_element(ElementWarehouse::FASTCOMM_LINK).click
	$web_driver.switch_to.window($web_driver.window_handles.last)
	sleep 5
	$web_driver.find_element(ElementWarehouse::FASTCOMM_TITLE)
	sleep 2
	$web_driver.close.last
	sleep 2
	$web_driver.switch_to.window($web_driver.window_handles.first)
	$web_driver.find_element(ElementWarehouse::NO_BUTTON).click
	$web_driver.find_element(ElementWarehouse::NO_BUTTON_RESPONSE_1)
	$web_driver.find_element(ElementWarehouse::NO_BUTTON_RESPONSE_2)
end

Then('I click on the WIDGET and send messages instead of clicking') do
	$web_driver.find_element(ElementWarehouse::FASTCOMM_WIDGET).click
	$web_driver.find_element(ElementWarehouse::WELCOME_FASTCOMM_TEXT)
	$web_driver.find_element(ElementWarehouse::MORE_FASTCOMM_BUTTON)
	$web_driver.find_element(ElementWarehouse::MEDIA_BUTTON)
	$web_driver.find_element(ElementWarehouse::CREATING_WITH_US_BUTTON)
	$web_driver.find_element(ElementWarehouse::CHATTING_TO_US_BUTTON)
	$web_driver.find_element(ElementWarehouse::CHAT_FIELD).send_keys('I would like more info on your Solutions')
	$web_driver.find_element(ElementWarehouse::CHAT_FIELD).send_keys(:return)
	$web_driver.find_element(ElementWarehouse::OUR_SOLUTION_RESPONSE_1)
	$web_driver.find_element(ElementWarehouse::HG_SOLUTION_RESPONSE_2)
	$web_driver.find_element(ElementWarehouse::HG_SOLUTION_RESPONSE_3)
	$web_driver.find_element(ElementWarehouse::OUR_SOLUTION_RESPONSE_4)
	$web_driver.find_element(ElementWarehouse::OUR_SOLUTION_RESPONSE_5)
	$web_driver.find_element(ElementWarehouse::HI_GURU_BUTTON)
	$web_driver.find_element(ElementWarehouse::HELLOTHING_BUTTON)
	$web_driver.find_element(ElementWarehouse::CHAT_FIELD).send_keys('I would like to know about Latch')
	$web_driver.find_element(ElementWarehouse::CHAT_FIELD).send_keys(:return)
	$web_driver.find_element(ElementWarehouse::LATCH_RESPONSE_1)
	$web_driver.find_element(ElementWarehouse::LATCH_RESPONSE_2)
	$web_driver.find_element(ElementWarehouse::LATCH_RESPONSE_3)
	$web_driver.find_element(ElementWarehouse::LATCH_RESPONSE_4)
	$web_driver.find_element(ElementWarehouse::LATCH_URL).click
	$web_driver.switch_to.window($web_driver.window_handles.last)
	$web_driver.find_element(ElementWarehouse::LATCH_SITE_TEXT)
	$web_driver.find_element(ElementWarehouse::LATCH_SIGN_IN)
	sleep 2
	$web_driver.close.last
	sleep 2
	$web_driver.switch_to.window($web_driver.window_handles.first)
	$web_driver.find_element(ElementWarehouse::NO_BUTTON)
	$web_driver.find_element(ElementWarehouse::CHAT_FIELD).send_keys('Yes there is')
	$web_driver.find_element(ElementWarehouse::CHAT_FIELD).send_keys(:return)
	# TODO: - Bug Found- Saying yes instead of clicking yes gives incorrect response when sending "yes, Thank you"
	$web_driver.find_element(ElementWarehouse::LATCH_YES_RESPONSE_1)
	$web_driver.find_element(ElementWarehouse::LATCH_YES_RESPONSE_2)
	$web_driver.find_element(ElementWarehouse::LATCH_YES_RESPONSE_3)
	$web_driver.find_element(ElementWarehouse::OUR_SOLUTION_BUTTON)
	$web_driver.find_element(ElementWarehouse::MEDIA_BUTTON)
	$web_driver.find_element(ElementWarehouse::CREATING_WITH_US_BUTTON)
	$web_driver.find_element(ElementWarehouse::CHATTING_TO_US_BUTTON)
	$web_driver.find_element(ElementWarehouse::CHAT_FIELD).send_keys('Please tell me more about Fastcomm')
	$web_driver.find_element(ElementWarehouse::CHAT_FIELD).send_keys(:return)
	$web_driver.find_element(ElementWarehouse::ABOUT_FASTCOMM_RESPONSE_1)
	$web_driver.find_element(ElementWarehouse::ABOUT_FASTCOMM_RESPONSE_2)
	$web_driver.find_element(ElementWarehouse::ABOUT_FASTCOMM_RESPONSE_3)
	$web_driver.find_element(ElementWarehouse::ABOUT_FASTCOMM_RESPONSE_4)
	$web_driver.find_element(ElementWarehouse::ABOUT_FASTCOMM_RESPONSE_5)
	$web_driver.find_element(ElementWarehouse::ABOUT_FASTCOMM_RESPONSE_6)
	$web_driver.find_element(ElementWarehouse::FASTCOMM_LINK).click
	$web_driver.switch_to.window($web_driver.window_handles.last)
	$web_driver.find_element(ElementWarehouse::FASTCOMM_TITLE)
	sleep 2
	$web_driver.close.last
	sleep 2
	$web_driver.switch_to.window($web_driver.window_handles.first)
end

Then('I Complete my chat with the bot') do
	$web_driver.find_element(ElementWarehouse::GET_STARTED_BUTTON).click
	$web_driver.find_element(ElementWarehouse::GET_STARTED_REPLY)
	$web_driver.find_element(ElementWarehouse::WANT_TO_KNOW_MORE_REPLY)
	$web_driver.find_element(ElementWarehouse:: YES_BUTTON)
	$web_driver.find_element(ElementWarehouse:: NO_BUTTON)
	sleep 1
	$web_driver.find_element(ElementWarehouse::YES_BUTTON).click
	$web_driver.find_element(ElementWarehouse::GREAT_BOT_RESPONSE)
	$web_driver.find_element(ElementWarehouse::HELP_BOT_RESPONSE)
	$web_driver.find_element(ElementWarehouse:: YES_BUTTON)
	$web_driver.find_element(ElementWarehouse:: NO_BUTTON)
	sleep 1
	$web_driver.find_element(ElementWarehouse::REGISTER_LINK).click
	$web_driver.switch_to.window($web_driver.window_handles.last)
	sleep 10
	wait.until { $web_driver.find_element(ElementWarehouse::HIGURU_LOGO) }
	$web_driver.find_element(ElementWarehouse::WELCOME_HIGURU)
	$web_driver.close.last
	$web_driver.switch_to.window($web_driver.window_handles.first)
	$web_driver.find_element(ElementWarehouse::NO_BUTTON).click
	$web_driver.find_element(ElementWarehouse::END_GREETING_TEXT)
	$stdout.puts 'Conversation resolved successfully'
	$stdout.flush
end

When('I re-initiate my Chat with the Bot') do
	$web_driver.find_element(ElementWarehouse::CHAT_FIELD).send_keys('Hallo')
	$web_driver.find_element(ElementWarehouse::CHAT_FIELD).send_keys(:return)
	if $web_driver.find_elements(ElementWarehouse::MY_PLEASURE_TEXT).first
		$web_driver.find_element(ElementWarehouse::CHAT_FIELD).send_keys('Hi')
		$web_driver.find_element(ElementWarehouse::CHAT_FIELD).send_keys(:return)
	elsif $web_driver.find_elements(ElementWarehouse::YOUR_WELCOME_TEXT).first
		$web_driver.find_element(ElementWarehouse::CHAT_FIELD).send_keys('Hi')
		$web_driver.find_element(ElementWarehouse::CHAT_FIELD).send_keys(:return)
	elsif $web_driver.find_elements(ElementWarehouse::CONVERSATION_AGENT_RESOLVED).first
		$web_driver.find_element(ElementWarehouse::CHAT_FIELD).send_keys('Hi')
		$web_driver.find_element(ElementWarehouse::CHAT_FIELD).send_keys(:return)
	end
	$web_driver.find_element(ElementWarehouse:: SUPPORT_BUTTON).click
	$web_driver.find_element(ElementWarehouse:: SUPPORT_BOT_RESPONSE)
	$web_driver.find_element(ElementWarehouse::CHAT_FIELD).send_keys('I said Support')
	$web_driver.find_element(ElementWarehouse::CHAT_FIELD).send_keys(:return)
	$web_driver.find_element(ElementWarehouse:: DESCRIPTION_BOT_RESPONSE_1)
	$web_driver.find_element(ElementWarehouse:: DESCRIPTION_BOT_RESPONSE_2)
	$stdout.puts 'Chat sent to Agent. Next Test is to see the chat transferred to Agent.'
	$stdout.flush
	$web_driver.find_element(ElementWarehouse::CHAT_FIELD).send_keys('Thank you Awesome Bot!')
	sleep 2
	$web_driver.find_element(ElementWarehouse::CHAT_FIELD).send_keys(:return)
end

Then('I re-initiate my Chat with the Fastcomm Sites Bot') do
	$web_driver.find_element(ElementWarehouse::CHAT_FIELD).send_keys('Hallo')
	$web_driver.find_element(ElementWarehouse::CHAT_FIELD).send_keys(:return)
	if $web_driver.find_elements(ElementWarehouse::HELP_BOT_RESPONSE).first
		$web_driver.find_element(ElementWarehouse::CHAT_FIELD).send_keys('Hi')
		$web_driver.find_element(ElementWarehouse::CHAT_FIELD).send_keys(:return)
	end
	$web_driver.find_element(ElementWarehouse::MEDIA_BUTTON).click
	$web_driver.find_element(ElementWarehouse::MEDIA_RESPONSE_TEXT)
	$web_driver.find_element(ElementWarehouse::HELP_BOT_RESPONSE)
	$web_driver.find_element(ElementWarehouse::MEDIA_RESPONSE_LINK).click
	$web_driver.switch_to.window($web_driver.window_handles.last)
	sleep 2
	$web_driver.find_element(ElementWarehouse::FASTCOMM_LOGO)
	$web_driver.find_element(ElementWarehouse::MEDIA_URL_TEXT)
	$web_driver.find_element(ElementWarehouse::MEDIA_URL_TEXT_2)
	$web_driver.find_element(ElementWarehouse::SHOPPING_CART)
	$web_driver.find_element(ElementWarehouse::MEDIA_PLAY_BUTTON)
	# TODO: - Nice to have video played
	# $web_driver.find_element(ElementWarehouse::YOUTUBE_PLAY_BUTTON).click
	# $web_driver.find_element(ElementWarehouse::YOUTUBE_PLAY_TEXT)
	# sleep 10
	# $web_driver.find_element(ElementWarehouse::CLOSE_YOUTUBE_VIDEO).click
	$web_driver.find_element(ElementWarehouse::THREE_LINES).click
	$web_driver.find_element(ElementWarehouse::HOME_TEXT)
	$web_driver.find_element(ElementWarehouse::STORE_TEXT)
	$web_driver.find_element(ElementWarehouse::IOT_TEXT)
	$web_driver.find_element(ElementWarehouse::MEDIA_TEXT)
	$web_driver.find_element(ElementWarehouse::COMPANY_TEXT)
	$web_driver.find_element(ElementWarehouse::THREE_LINES_CLOSE_BUTTON).click
	sleep 2
	$web_driver.close.last
	sleep 2
	$web_driver.switch_to.window($web_driver.window_handles.first)
	$web_driver.find_element(ElementWarehouse::HELP_BOT_RESPONSE)
	$web_driver.find_element(ElementWarehouse::YES_BUTTON).click
	$web_driver.find_element(ElementWarehouse::CREATING_WITH_US_BUTTON).click
	$web_driver.find_element(ElementWarehouse::CREATING_RESPONSE)
	$web_driver.find_element(ElementWarehouse::CREATING_RESPONSE_2)
	$web_driver.find_element(ElementWarehouse::CREATING_RESPONSE_3)
	$web_driver.find_element(ElementWarehouse::CHAT_TEXT_FIELD).send_keys(TestUser.email)
	$web_driver.find_element(ElementWarehouse::CHAT_FIELD).send_keys(:return)
	$web_driver.find_element(ElementWarehouse::CHAT_TEXT_FIELD).send_keys('Thank you')
	$web_driver.find_element(ElementWarehouse::CHAT_FIELD).send_keys(:return)
end

When('I initiate chatting to a live agent') do
	sleep 8
	wait.until { $web_driver.find_element(ElementWarehouse::FASTCOMM_WIDGET).displayed? }
	$web_driver.find_element(ElementWarehouse::FASTCOMM_WIDGET).click
	sleep 5
	$web_driver.find_element(ElementWarehouse::CHATTING_TO_US_BUTTON).click
	if $web_driver.find_elements(ElementWarehouse::CHATTING_TO_US_RESPONSE_1).first
		$stdout.puts 'Agent available'.blue
		$stdout.flush
	elsif $web_driver.find_elements(ElementWarehouse::AGENT_NOT_AVAILABLE).first
		$stdout.puts 'Agent not available'.red
		$stdout.flush
		$web_driver.find_element(ElementWarehouse::AGENT_NOT_AVAILABLE_1)
		$web_driver.find_element(ElementWarehouse::CHAT_TEXT_FIELD).send_keys(TestUser.email)
		$web_driver.find_element(ElementWarehouse::CHAT_TEXT_FIELD).send_keys(:return)
		$web_driver.find_element(ElementWarehouse::EMAIL_RESPONSE)
	end
end

Then('I reply as an Agent and resolve the chat') do
	sleep 2
	open_new_tab
	$web_driver.get 'https://app-qa.hi.guru/account/login'
	sleep 5
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.hi_guru_email)
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.hi_guru_password)
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::TEST_FASTCOMM).click
	$web_driver.find_element(ElementWarehouse::CLOSE_NOTIFICATION).click
	if $web_driver.find_elements(ElementWarehouse::CONVERSATION_COUNT_ONE).first
		$web_driver.find_elements(ElementWarehouse::CONVERSATION_COUNT_ONE).first.click
		sleep 5
		$web_driver.find_element(ElementWarehouse::INBOUND_CHAT).click
		$web_driver.find_element(ElementWarehouse::INBOUND_CHAT_FIELD).send_keys('Hi, My name Is BOT, How may I assist you?')
		sleep 3
		$web_driver.find_element(ElementWarehouse::INBOUND_CHAT_SEND_BUTTON).click
		$web_driver.switch_to.window($web_driver.window_handles.first)
		$web_driver.find_element(ElementWarehouse::AGENT_RESPONSE)
		$web_driver.find_element(ElementWarehouse::CHAT_FIELD).send_keys('Hi Bot, I am just testing. We may close this query')
		$web_driver.find_element(ElementWarehouse::CHAT_FIELD).send_keys(:return)
		$web_driver.switch_to.window($web_driver.window_handles.last)
		$web_driver.find_element(ElementWarehouse::CLIENT_RESOLVE_TEXT)
		$web_driver.find_element(ElementWarehouse::INBOUND_CHAT_FIELD).send_keys('Sure thing. Consider it Resolved...')
		sleep 3
		$web_driver.find_element(ElementWarehouse::INBOUND_CHAT_SEND_BUTTON).click
		$web_driver.switch_to.window($web_driver.window_handles.first)
		$web_driver.find_element(ElementWarehouse::AGENT_RESOLVE_TEXT_2)
		$web_driver.find_element(ElementWarehouse::CHAT_FIELD).send_keys('Thank you Awesome Bot')
		$web_driver.find_element(ElementWarehouse::CHAT_FIELD).send_keys(:return)
		$web_driver.switch_to.window($web_driver.window_handles.last)
		$web_driver.find_element(ElementWarehouse::RESOLVE_BUTTON).click
		$web_driver.find_element(ElementWarehouse::RESOLVE_TEXT).click
		$web_driver.find_element(ElementWarehouse::RESOLVED_TEXT)
		$web_driver.switch_to.window($web_driver.window_handles.first)
		$web_driver.find_element(ElementWarehouse::CONVERSATION_AGENT_RESOLVED)
	elsif $web_driver.find_elements(ElementWarehouse::CONVERSATIONS_TAB).first
		$web_driver.find_elements(ElementWarehouse::CONVERSATIONS_TAB).first.click
		$web_driver.find_elements(ElementWarehouse::BOT_TAB).click
		$web_driver.find_elements(ElementWarehouse::BOT_CHAT).click
		$web_driver.find_elements(ElementWarehouse::CLAIM_BUTTON).click
		$web_driver.find_elements(ElementWarehouse::INBOUND_TAB).click
		$web_driver.find_elements(ElementWarehouse::INBOUND_CHAT).click
		$web_driver.find_element(ElementWarehouse::INBOUND_CHAT_FIELD).send_keys('Hi, My name Is BOT, How may I assist you?')
		sleep 3
		$web_driver.find_element(ElementWarehouse::INBOUND_CHAT_SEND_BUTTON).click
		$web_driver.switch_to.window($web_driver.window_handles.first)
		$web_driver.find_element(ElementWarehouse::AGENT_RESPONSE)
		$web_driver.find_element(ElementWarehouse::CHAT_FIELD).send_keys('Hi Bot, I am just testing. We may close this query')
		$web_driver.find_element(ElementWarehouse::CHAT_FIELD).send_keys(:return)
		$web_driver.switch_to.window($web_driver.window_handles.last)
		$web_driver.find_element(ElementWarehouse::CLIENT_RESOLVE_TEXT)
		$web_driver.find_element(ElementWarehouse::INBOUND_CHAT_FIELD).send_keys('Sure thing. Consider it Resolved...')
		sleep 3
		$web_driver.find_element(ElementWarehouse::INBOUND_CHAT_SEND_BUTTON).click
		$web_driver.switch_to.window($web_driver.window_handles.first)
		$web_driver.find_element(ElementWarehouse::AGENT_RESOLVE_TEXT_2)
		$web_driver.find_element(ElementWarehouse::CHAT_FIELD).send_keys('Thank you Awesome Bot')
		$web_driver.find_element(ElementWarehouse::CHAT_FIELD).send_keys(:return)
		$web_driver.switch_to.window($web_driver.window_handles.last)
		$web_driver.find_element(ElementWarehouse::RESOLVE_BUTTON).click
		$web_driver.find_element(ElementWarehouse::RESOLVE_TEXT).click
		$web_driver.find_element(ElementWarehouse::RESOLVED_TEXT)
		$web_driver.switch_to.window($web_driver.window_handles.first)
		$web_driver.find_element(ElementWarehouse::CONVERSATION_AGENT_RESOLVED)
	end
end

Then('I confirm the chat has been closed on HiGuru Portal Channel') do
	sleep 2
	open_new_tab
	# Send link manually and wait
	$web_driver.get 'https://app-qa.hi.guru/account/login'
	sleep 2
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.hi_guru_email)
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.hi_guru_password)
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::TEST_HIGURU).click
	$web_driver.find_element(ElementWarehouse::CLOSE_NOTIFICATION).click
	$web_driver.find_element(ElementWarehouse::CONVERSATIONS_TAB).click
	$web_driver.find_element(ElementWarehouse::INBOUND_TAB).click
	$web_driver.find_element(ElementWarehouse::INBOUND_CHAT).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::THANK_YOU_TEXT)
	$web_driver.find_element(ElementWarehouse::RESOLVE_BUTTON).click
	sleep 1
	$web_driver.find_element(ElementWarehouse::RESOLVE_TEXT).click
	$web_driver.find_element(ElementWarehouse::RESOLVED_TEXT)
	$web_driver.switch_to.window($web_driver.window_handles.first)
	 $web_driver.find_element(ElementWarehouse::CONVERSATION_AGENT_RESOLVED)
end

Then('I claim and close the chat on Fastcomm Portal Channel') do
	$web_driver.find_element(ElementWarehouse::YES_BUTTON)
	$web_driver.find_element(ElementWarehouse::NO_BUTTON)
	sleep 2
	open_new_tab
	 $web_driver.get 'https://app-qa.hi.guru/account/login'
	sleep 2
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.hi_guru_email)
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.hi_guru_password)
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::TEST_FASTCOMM).click
	$web_driver.find_element(ElementWarehouse::CLOSE_NOTIFICATION).click
	$web_driver.find_element(ElementWarehouse::CONVERSATIONS_TAB).click
	$web_driver.find_element(ElementWarehouse::BOT_TEXT).click
	$web_driver.find_element(ElementWarehouse::BOT_CHAT).click
	$web_driver.find_element(ElementWarehouse::CLAIM_BUTTON).click
	$web_driver.find_element(ElementWarehouse::CONVO_CLAIMED_TEXT)
	$web_driver.find_element(ElementWarehouse::INBOUND_TAB).click
	$web_driver.find_element(ElementWarehouse::INBOUND_CHAT).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::RESOLVE_BUTTON).click
	sleep 1
	$web_driver.find_element(ElementWarehouse::RESOLVE_TEXT).click
	$web_driver.find_element(ElementWarehouse::RESOLVED_TEXT)
	$web_driver.switch_to.window($web_driver.window_handles.first)
	$web_driver.find_element(ElementWarehouse::CONVERSATION_AGENT_RESOLVED)
end

Then('I get feedback from the agent') do
	TIME = Time.now
	$stdout.puts 'Time Chat started: '.blue
	$stdout.puts(TIME)
	$stdout.flush
	check_for_first_reply
	TIME_1 = TIME - Time.now
	response = TIME_1/60
	$stdout.puts 'Time of first agent response = '.green
	$stdout.puts response
	$stdout.puts 'Minutes'.green
	$web_driver.find_element(ElementWarehouse::CHAT_TEXT_FIELD).send_keys('Thank you. This is a an automated Test. Please can you Resolve this query')
	$web_driver.find_element(ElementWarehouse::SEND_BUTTON).click
	check_for_resolved
	if $web_driver.find_elements(ElementWarehouse::RESOLVED_TIME_1).first
		RESOLVED_TIME = $web_driver.find_element(ElementWarehouse::RESOLVED_TIME_1).text
	elsif $web_driver.find_elements(ElementWarehouse::RESOLVED_TIME_2).first
		RESOLVED_TIME = $web_driver.find_element(ElementWarehouse::RESOLVED_TIME_2).text
	end
	$stdout.puts(RESOLVED_TIME)
	TIME_2 = Time.now - TIME
	resolved = TIME_2/60
	$stdout.puts 'Total time of conversation = '.green
	$stdout.puts resolved
	$stdout.puts 'Minutes'.green
	$stdout.flush
end