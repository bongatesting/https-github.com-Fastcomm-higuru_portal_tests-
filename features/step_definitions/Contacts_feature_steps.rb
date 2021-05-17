# frozen_string_literal: true

wait = Selenium::WebDriver::Wait.new(timeout: 80)

Given('I have no Contacts Added') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.test_account)
	sleep 3
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 3
end

Then('I view the empty contacts') do
	$web_driver.find_element(ElementWarehouse::CONTACTS_TAB).click
	$web_driver.page_source.include? 'Registered Contacts'
	$web_driver.page_source.include? 'Create Contact'
	$web_driver.find_element(ElementWarehouse::UNREGISTERED_CONTACTS_TAB).click
	sleep 3
	$web_driver.page_source.include? 'Unregistered Contacts'
	$web_driver.page_source.include? 'Create Contact'
	$web_driver.find_element(ElementWarehouse::REGISTERED_CONTACTS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CREATE_CONTACT_BUTTON).click
	sleep 3
end

Then('I fill in the Contact form, select all channels and dismiss the form') do
	$web_driver.find_element(ElementWarehouse::CONTACT_FULL_NAME_FIELD).send_keys('Creating Contact Test')
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONTACT_ORGANIZATION_FIELD).send_keys('hi.guru')
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONTACT_EMAIL_FIELD).send_keys(TestUser.hi_guru_email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONTACT_PHONE_DROP_DOWN).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SELECT_SOUTH_AFRICA).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONTACT_PHONE_FIELD).send_keys(TestUser.number)
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONTACT_CHANNEL_DROP_DOWN).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SELECT_WHATSAPP).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONTACT_CHANNEL_DROP_DOWN_1).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SELECT_FACEBOOK).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONTACT_CHANNEL_DROP_DOWN_1).click
	sleep 3
	scroll_to($web_driver.find_element(ElementWarehouse::SELECT_GOOGLE_MY_BUSINESS))
	$web_driver.find_element(ElementWarehouse::SELECT_GOOGLE_MY_BUSINESS).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONTACT_CHANNEL_DROP_DOWN_1).click
	sleep 3
	scroll_to($web_driver.find_element(ElementWarehouse::SELECT_SKYPE))
	$web_driver.find_element(ElementWarehouse::SELECT_SKYPE).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONTACT_CHANNEL_DROP_DOWN_1).click
	sleep 3
	scroll_to($web_driver.find_element(ElementWarehouse::SELECT_INSTA))
	$web_driver.find_element(ElementWarehouse::SELECT_INSTA).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONTACT_CHANNEL_DROP_DOWN_1).click
	sleep 3
	scroll_to($web_driver.find_element(ElementWarehouse::SELECT_TELEGRAM))
	$web_driver.find_element(ElementWarehouse::SELECT_TELEGRAM).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONTACT_CHANNEL_DROP_DOWN_1).click
	sleep 3
	scroll_to($web_driver.find_element(ElementWarehouse::SELECT_TWITTER))
	$web_driver.find_element(ElementWarehouse::SELECT_TWITTER).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONTACT_CHANNEL_FIELD).send_keys('Channel')
	sleep 3
	$web_driver.find_element(ElementWarehouse::DISMISS_CONTACTS_FORM).click
	sleep 3
end

Then('I add and view the Contacts') do
	$web_driver.find_element(ElementWarehouse::CONTACTS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::UNREGISTERED_CONTACTS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::REGISTERED_CONTACTS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CREATE_CONTACT_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONTACT_FULL_NAME_FIELD).send_keys('Creating Contact Test')
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONTACT_ORGANIZATION_FIELD).send_keys('hi.guru')
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONTACT_EMAIL_FIELD).send_keys(TestUser.hi_guru_email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONTACT_PHONE_DROP_DOWN).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SELECT_SOUTH_AFRICA).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONTACT_PHONE_FIELD).send_keys(TestUser.number)
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONTACT_CHANNEL_DROP_DOWN).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SELECT_WHATSAPP).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CONTACT_CHANNEL_FIELD).send_keys('Channel')
	sleep 3
	$web_driver.find_element(ElementWarehouse::ADD_CONTACT_BUTTON).click
	sleep 3
end