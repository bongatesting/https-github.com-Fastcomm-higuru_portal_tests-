Given('I have 0 channels added') do
	$web_driver.navigate.to "https://#{ENV['HOST']}.hi.guru/"
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.email)
	sleep 2
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
	sleep 2
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::NOT_NOW_NOTIFICATION).click
	sleep 5
end

Then('I add the channel') do
	$web_driver.find_element(ElementWarehouse::CHANNELS_TAB).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::ADD_CHANNEL_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::WEB_MESSAGE_CHANNEL).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ADD_WEB_MESSAGE_CHANNEL).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SITE_NAME).send_keys('Webmessage')
	sleep 3
	$web_driver.find_element(ElementWarehouse::SEND_INSTRUCTIONS).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::DONE_BUTTON).click
end
