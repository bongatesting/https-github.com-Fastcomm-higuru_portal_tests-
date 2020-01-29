Then('I add a new web message channel') do
	$web_driver.find_element(ElementWarehouse::CHANNELS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ADD_CHANNEL_BUTTON).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::HIGURU_WEB_MESSAGE).click
	$web_driver.find_element(ElementWarehouse::ADD_CHANNEL_BUTTON_2).click
	$web_driver.find_element(ElementWarehouse::HIGURU_WEB_MESSAGE_INPUT).send_keys('Webmessage')
	$web_driver.find_element(ElementWarehouse::SEND_INSTRUCTIONS).click
	sleep 2
end

Then('I navigate to Channels tab') do
	$web_driver.find_element(ElementWarehouse::CHANNELS_TAB).click
end