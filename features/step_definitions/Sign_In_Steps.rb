# frozen_string_literal: true

Given('I am viewing the hi.guru website') do
	$web_driver.get 'file:///D:/HiGuRuWidget.html'
	$web_driver.find_element(ElementWarehouse::WIDGET)
end

Given('I am viewing the Fastcomm website') do
	#$web_driver.get "https://fastcomm.com" }
	#$web_driver.find_element(ElementWarehouse::FASTCOMM_LOGO)
	$web_driver.get 'file:///D:/FastcommWidget.html'
	$web_driver.find_element(ElementWarehouse::WIDGET)
end

Given('I am on the HiGuru Sign In Page') do
	$web_driver.get 'https://hi.guru'
	$web_driver.find_element(ElementWarehouse::LOGO)
	$web_driver.find_element(ElementWarehouse::WIDGET).click
	$web_driver.find_element(ElementWarehouse::WELCOME_FASTCOMM_TEXT).click
end

Then('I Sign in with my own valid Credentials') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.hi_guru_email)
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.hi_guru_password)
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::TEST_HIGURU).click
end

Given('I am already signed in') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.hi_guru_email)
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.hi_guru_password)
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::TEST_HIGURU).click
	$web_driver.find_element(ElementWarehouse::CLOSE_NOTIFICATION).click
end

When('I Sign out') do

end

When('I Sign in with Invalid Credentials') do

end

Then('I Sign in with Demo Credentials') do

end