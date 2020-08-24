# frozen_string_literal: true

wait = Selenium::WebDriver::Wait.new(timeout: 80)

Given('The Agent is not available') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::AGENT_IMAGE).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::AGENT_UNAVAILABLE_BUTTON).click
	sleep 5
end

Then('I make a conversation and check if it comes through') do
	open_new_tab
	sleep 3
	$web_driver.get(TestUser.qa_web_widget)
	sleep 3
	wait.until { $web_driver.find_element(ElementWarehouse::QA_WEB_WIDGET).displayed? }
	$web_driver.find_element(ElementWarehouse::QA_WEB_WIDGET).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::QA_WEB_WIDGET_CHAT_FIELD).send_keys('Agent availability Test')
	sleep 3
	$web_driver.find_element(ElementWarehouse::QA_WEB_WIDGET_CHAT_FIELD).send_keys(:return)
	$web_driver.close.last
	$web_driver.switch_to.window( $web_driver.window_handles.first )
	sleep 2
	$web_driver.navigate.refresh
	sleep 5
	$web_driver.find_element(ElementWarehouse::CONVERSATIONS_TAB).click
	sleep 4
end

Then('I switch back to available and check if the conversation comes through') do
	$web_driver.find_element(ElementWarehouse::AGENT_IMAGE_CONVERSATION_VIEW).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::AGENT_AVAILABLE_BUTTON).click
	sleep 3
	$web_driver.navigate.refresh
	sleep 3
end

Then('I set the time') do
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_SETTINGS).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SETTINGS).click
	sleep 3
	scroll_to($web_driver.find_element(ElementWarehouse::USER_INACTIVITY_BUTTON))
	sleep 5
	$web_driver.find_element(ElementWarehouse::USER_INACTIVITY_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::USER_INACTIVITY_INPUT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::USER_INACTIVITY_INPUT).send_keys(:backspace)
	sleep 3
	$web_driver.find_element(ElementWarehouse::USER_INACTIVITY_INPUT).send_keys('1')
	sleep 6
	$web_driver.find_element(ElementWarehouse::USER_INACTIVITY_INPUT_SAVE).click
end