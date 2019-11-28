Then('I click on the WIDGET') do
	$web_driver.find_element(ElementWarehouse::WIDGET).click
	$web_driver.find_element(ElementWarehouse::GET_STARTED_TEXT)
	$web_driver.find_element(ElementWarehouse::SUPPORT_TEXT)
	$web_driver.find_element(ElementWarehouse::PRODUCT_INFO_TEXT)
	$web_driver.find_element(ElementWarehouse::FEEDBACK_TEXT)
	$web_driver.find_element(ElementWarehouse::CHAT_WITH_US_TEXT)
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
	$web_driver.find_element(ElementWarehouse::NO_BUTTON).click
	$web_driver.find_element(ElementWarehouse::CONVERSATION_RESOLVED_TEXT)
	puts 'Conversation resolved successfully'
end

Then('I re-initiate my Chat with the Bot') do
	$web_driver.find_element(ElementWarehouse::CHAT_FIELD).send_keys('Hallo')
	$web_driver.find_element(ElementWarehouse::SEND_BUTTON).click
	if $web_driver.find_elements(ElementWarehouse::CONVERSATION_RESOLVED_TEXT).first
		$web_driver.find_element(ElementWarehouse::CHAT_FIELD).send_keys('Hi')
		$web_driver.find_element(ElementWarehouse::SEND_BUTTON).click
	end
	$web_driver.find_element(ElementWarehouse:: SUPPORT_BUTTON).click
	$web_driver.find_element(ElementWarehouse:: SUPPORT_BOT_RESPONSE)
	$web_driver.find_element(ElementWarehouse::CHAT_FIELD).send_keys('Support')
	$web_driver.find_element(ElementWarehouse::SEND_BUTTON).click
	$web_driver.find_element(ElementWarehouse:: DESCRIPTION_BOT_RESPONSE_1)
	$web_driver.find_element(ElementWarehouse:: DESCRIPTION_BOT_RESPONSE_2)
	puts 'Chat sent to Agent. Next Test is to see the chat transferred to Agent.'
	$web_driver.find_element(ElementWarehouse::CHAT_FIELD).send_keys('Thank you Awesome Bot!👌')
	sleep 2
	$web_driver.find_element(ElementWarehouse::SEND_BUTTON).click
	end

Then('I confirm the chat has been closed') do
	$web_driver.navigate.to "https://#{ENV['HOST']}.hi.guru/"
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.email)
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
#TODO - Here we go to check if chat was transferred.
end

