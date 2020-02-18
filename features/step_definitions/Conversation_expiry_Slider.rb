Given('The Conversation Expiry Slider is Disabled') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.email)
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	$web_driver.find_element(ElementWarehouse::NOT_NOW_NOTIFICATION).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_SETTINGS).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::SETTINGS).click
end

Then('I Adjust Conversation Expiry Slider by One hour') do
	A = $web_driver.find_element(ElementWarehouse::CONVERSATION_RESOLVE_SLIDER)
	A.click
end

Then('I initiate a Conversation') do
	open_new_tab
  $web_driver.get "file:///C:/Users/Bonga%20Fati/Desktop/QA%20Test%20run/WebmessageQA39.html"
  $web_driver.find_element(ElementWarehouse::WEB_WIDGET).click
	sleep 3
  $web_driver.find_element(ElementWarehouse::WEB_WIDGET_CHAT_FIELD).send_keys('This is a Conversation Expiry slider Test')
	sleep 2
	$web_driver.find_element(ElementWarehouse::WEB_WIDGET_CHAT_FIELD).send_keys(:return)
	sleep 4
	$web_driver.close.last
	$web_driver.switch_to.window( $web_driver.window_handles.first )
end
Then('I check if the conversation has been Closed after one hour') do
	$web_driver.find_element(ElementWarehouse::CONVERSATION_HISTORY_TAB).click
end