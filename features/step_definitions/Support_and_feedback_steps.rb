Then('I Ask for Support')do
	$web_driver.find_element(ElementWarehouse::AGENT_IMAGE).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::SUPPORT_AND_FEEDBACK).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::HIGURU_WEB_ICON).click
	$web_driver.find_element(ElementWarehouse::SUPPORT_BUTTON).click
	$web_driver.find_element(ElementWarehouse:: SUPPORT_BOT_RESPONSE)
	sleep 2
	$web_driver.find_element(ElementWarehouse::HG_CHAT_FIELD).send_keys('Bonga Test')
	sleep 2
	$web_driver.find_element(ElementWarehouse::SEND_BUTTON).click
	sleep 3
end
Then('I send Feedback')do
	$web_driver.find_element(ElementWarehouse::AGENT_IMAGE).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::SUPPORT_AND_FEEDBACK).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::HIGURU_WEB_ICON).click
	$web_driver.find_element(ElementWarehouse::FEEDBACK_BUTTON).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::FEEDBACK_REPLY).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::HG_CHAT_FIELD).send_keys('This is Feedback')
	sleep 2
	$web_driver.find_element(ElementWarehouse::SEND_BUTTON).click
end
