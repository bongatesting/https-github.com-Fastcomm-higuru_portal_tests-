# frozen_string_literal: true

wait = Selenium::WebDriver::Wait.new(timeout: 80)

Given('I am on Free Plan') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.outlook_email)
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
end

Then('I attempt adding a company unit') do
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_IMAGE).click
end

Then('I attempt adding the routing tags') do
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_SETTINGS).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SETTINGS).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ROUTING_TAG_UPGRADE).click
end

Then('I attempt adding conversation topic tags') do
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_SETTINGS).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SETTINGS).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONVERSATION_TOPIC_UPGRADE).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::DISMISS_PLAN_SELECTION).click
end

Then('I attempt adding a Twitter account') do
	$web_driver.find_element(ElementWarehouse::CHANNELS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ADD_CHANNEL_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::TWITTER_CHANNEL).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::UPGRADE_TWITTER).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::DISMISS_PLAN_SELECTION).click
end

Then('I attempt Adding Text Limit') do
	$web_driver.find_element(ElementWarehouse::CHANNELS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ADD_CHANNEL_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::TEXT_SMS_CHANNEL).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::UPGRADE_TEXT_SMS_CHANNEL).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::DISMISS_PLAN_SELECTION).click
end

Then('I attempt adding Whatsapp for Business') do
	$web_driver.find_element(ElementWarehouse::CHANNELS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ADD_CHANNEL_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::WHATSAPP_CHANNEL).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::UPGRADE_WHATSAPP_CHANNEL).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::DISMISS_PLAN_SELECTION).click
end

Then('I launch the web widget') do
	open_new_tab
	sleep 3
	$web_driver.get(TestUser.free_plan_web_widget)
	sleep 3
	wait.until { $web_driver.find_element(ElementWarehouse::QA_WEB_WIDGET).displayed? }
	$web_driver.find_element(ElementWarehouse::QA_WEB_WIDGET).click
	sleep 5
end

Then('I attempt adding the person') do
	$web_driver.find_element(ElementWarehouse::PEOPLE_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ADD_PERSON_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::DISMISS_PLAN_SELECTION).click
end

Then('I attempt adding another Team') do
	$web_driver.find_element(ElementWarehouse::TEAMS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::INACTIVE_TEAMS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::UPGRADE_TEAMS_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::DISMISS_PLAN_SELECTION).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ADD_TEAM_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::DISMISS_PLAN_SELECTION).click
end

Then('I attempt exporting stats') do
	$web_driver.find_element(ElementWarehouse::STATS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::EXPORT_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::DISMISS_PLAN_SELECTION).click
end

Then('I check out other upgrade buttons') do
	$web_driver.find_element(ElementWarehouse::AGENT_IMAGE).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::UPGRADE_ACCOUNT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::DISMISS_PLAN_SELECTION).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::AGENT_IMAGE).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::BILLING).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::UPGRADE_BILLING_PAGE).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::DISMISS_PLAN_SELECTION).click
end