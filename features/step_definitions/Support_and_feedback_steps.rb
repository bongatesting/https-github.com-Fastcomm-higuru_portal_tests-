# frozen_string_literal: true

wait = Selenium::WebDriver::Wait.new(timeout: 80)

Given('I have some Feedback') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 5
	$web_driver.find_element(ElementWarehouse::LOGIN_ACCOUNT_SELECT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_SELECT).click
	sleep 4
end

Then('I send Feedback') do
	$web_driver.find_element(ElementWarehouse::AGENT_IMAGE).click
	sleep 7
	$web_driver.find_element(ElementWarehouse::SUPPORT_AND_FEEDBACK).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::HIGURU_WIDGET).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::PRECHAT_FORM_NAME_FIELD).send_keys('Bonga Test')
	sleep 3
	$web_driver.find_element(ElementWarehouse::PRECHAT_FORM_EMAIL_FIELD).send_keys(TestUser.hi_guru_email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::PROD_PRECHAT_FORM_MOBILE_FIELD).send_keys(TestUser.mobile_number)
	sleep 3
	$web_driver.find_element(ElementWarehouse::PRECHAT_FORM_SELECT_COUNTRY).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::PROD_PRECHAT_FORM_MOBILE_FIELD).send_keys(TestUser.mobile_number)
	sleep 3
	$web_driver.find_element(ElementWarehouse::START_CHAT_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SUPPORT_BUTTON).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::HG_WEB_WIDGET_CHAT_FIELD).send_keys(TestUser.email)
	sleep 2
	$web_driver.find_element(ElementWarehouse::HG_WEB_WIDGET_CHAT_FIELD).send_keys(:return)
	sleep 3
	$web_driver.find_element(ElementWarehouse::TECHNICAL_ISSUE).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::HG_WEB_WIDGET_CHAT_FIELD).send_keys('Thank You')
	sleep 3
	$web_driver.find_element(ElementWarehouse::HG_WEB_WIDGET_CHAT_FIELD).send_keys(:return)
end
Then('I check whether the Feedback has been received') do
	open_new_tab
	$web_driver.get 'https://app.hi.guru/account/login'
	sleep 3
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.hi_guru_email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.hi_guru_password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::HIGURU_COMPANY_UNIT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::HIGURU_COMPANY_UNIT_SELECTION).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONVERSATIONS_TAB).click
	sleep 5
	$web_driver.find_element(ElementWarehouse::SELECT_INBOUND_CHAT).click
	sleep 3
	scroll_to($web_driver.find_element(ElementWarehouse::TAG_CONVERSATION))
	sleep 3
	$web_driver.find_element(ElementWarehouse::TAG_CONVERSATION).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SEARCH_CONVO_TOPIC_TAG).send_keys('Test')
	sleep 3
	$web_driver.find_element(ElementWarehouse::SELECT_CONVO_TOPIC_TAG).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SAVE_CONVERSATION_TAG).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::RESOLVE_DROP_DOWN).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::RESOLVE_BUTTON).click
	sleep 3
end