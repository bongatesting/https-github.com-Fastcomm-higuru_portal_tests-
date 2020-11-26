# frozen_string_literal: true

wait = Selenium::WebDriver::Wait.new(timeout: 80)

Then('I Add the new Agent') do
	$web_driver.find_element(ElementWarehouse::PEOPLE_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ADD_PERSON_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SCREEN_NAME).send_keys(TestUser.name)
	sleep 3
	$web_driver.find_element(ElementWarehouse::ADD_PERSON_EMAIL_FIELD).send_keys(TestUser.gmail_email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::ROLE).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SELECT_ROLE).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::MOBILE_NUMBER).send_keys(TestUser.number)
	sleep 3
	$web_driver.find_element(ElementWarehouse::ADD_PERSON_CREATE_BUTTON).click
	open_new_tab
	$web_driver.get 'https://gmail.com/'
	sleep 5
	$web_driver.find_element(ElementWarehouse::GMAIL_EMAIL_FIELD).send_keys(TestUser.gmail_email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::GMAIL_NEXT_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::GMAIL_PASSWORD_FIELD).send_keys(TestUser.gmail_password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::GMAIL_PASSWORD_NEXT_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::GMAIL_OPEN_EMAIL).click
	sleep 8
	$web_driver.find_element(ElementWarehouse::GMAIL_AGENT_CONFIRM_EMAIL).click
	sleep 3
	$web_driver.switch_to.window( $web_driver.window_handles.last )
	sleep 3
	$web_driver.find_element(ElementWarehouse::GOT_IT_WALK_THROUGH).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::GOT_IT_WALK_THROUGH).click
	sleep 3
	$web_driver.close.last
	sleep 2
	$web_driver.switch_to.window( $web_driver.window_handles.first )
	$web_driver.navigate.refresh
	sleep 3
	#$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.email)
	#sleep 3
	#$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
	#sleep 3
	#$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
end

Then('I Remove the Agent') do
	$web_driver.find_element(ElementWarehouse::PEOPLE_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SELECT_AGENT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::AGENT_DROP_DOWN_MENU).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::DELETE_USER_BUTTON).click
	sleep 3
end