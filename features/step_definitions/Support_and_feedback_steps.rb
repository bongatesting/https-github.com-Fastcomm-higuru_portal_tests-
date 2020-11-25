# frozen_string_literal: true

wait = Selenium::WebDriver::Wait.new(timeout: 80)

Given('I have some Feedback') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::QA_LOGIN_BUTTON).click
end

Then('I send Feedback') do
	$web_driver.find_element(ElementWarehouse::AGENT_IMAGE).click
	sleep 5
	$web_driver.find_element(ElementWarehouse::SUPPORT_AND_FEEDBACK).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SUPPORT_FEEDBACK_HIGURU_WEB_ICON).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::FEEDBACK_QUICK_REPLY_BUTTON).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::HG_CHAT_FIELD).send_keys('This is Support and Feedback Automated Test')
	sleep 2
	$web_driver.find_element(ElementWarehouse::HG_CHAT_FIELD).send_keys(:return)
end
Then('I check whether the Feedback has been received') do
	open_new_tab
	$web_driver.get 'https://hi.guru'
	sleep 4
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.hi_guru_email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.hi_guru_password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::QA_LOGIN_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::HIGURU_COMPANY_UNIT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::HIGURU_COMPANY_UNIT_SELECTION).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::QA_BOT_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::QA_SELECT_BOT_CHAT).click
	sleep 3
end