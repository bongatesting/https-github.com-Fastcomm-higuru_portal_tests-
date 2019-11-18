# frozen_string_literal: true

Given('I am on the Sign In Page') do
	$web_driver.find_element(ElementWarehouse::LOGO)
end

When('I Sign in with Invalid Credentials') do

end

Then('I Sign in with Demo Credentials') do

end

Then('I Sign in with my own valid Credentials') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.email)
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
end

When('I Sign out') do

end

Given('I am already signed in') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.email)
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	$web_driver.find_element(ElementWarehouse::CLOSE_NOTIFICATION).click
	# $web_driver.find_element(ElementWarehouse::ALLOW_NOTIFICATION).click
	# $web_driver.find_element(ElementWarehouse::ALLOW_NATIVE_NOTIFICATION).click
end