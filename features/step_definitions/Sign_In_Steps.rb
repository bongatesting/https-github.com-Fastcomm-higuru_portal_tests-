# frozen_string_literal: true

Given('I am on the Sign In Page') do
	$web_driver.find_element(ElementWarehouse::LOGO)
	$web_driver.find_element(ElementWarehouse::WIDGET).click
	robot = $web_driver.find_element(xpath: '/html/body/div[2]/div/div[1]/div[2]/div[3]/div[1]/div/div/div[1]')
	expect(robot.text).to include('Hi! Welcome to hi.guru.')
	robot = $web_driver.find_element(xpath: '/html/body/div[2]/div/div[1]/div[2]/div[3]/div[1]/div/div/div[1]')
	expect(robot.text).to include('Let’s boost')
	robot = $web_driver.find_element(xpath: '/html/body/div[2]/div/div[1]/div[2]/div[3]/div[1]/div/div/div[1]')
	expect(robot.text).to include('your business growth and customer')
	robot = $web_driver.find_element(xpath: '/html/body/div[2]/div/div[1]/div[2]/div[3]/div[1]/div/div/div[1]')
	expect(robot.text).to include('engagement!Excited? So am I! Let’s')
	robot = $web_driver.find_element(xpath: '/html/body/div[2]/div/div[1]/div[2]/div[3]/div[1]/div/div/div[1]')
	expect(robot.text).to include('get chatting, how can I assist you')
	robot = $web_driver.find_element(xpath: '/html/body/div[2]/div/div[1]/div[2]/div[3]/div[1]/div/div/div[1]')
	expect(robot.text).to include('today?')
end

Given('I am viewing the hi.guru website') do
	$web_driver.navigate.to "https://hi.guru/"
	$web_driver.find_element(ElementWarehouse::WIDGET)
end

Then('I Sign in with my own valid Credentials') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.email)
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
end

Given('I am already signed in') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.email)
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	$web_driver.find_element(ElementWarehouse::CLOSE_NOTIFICATION).click
	# $web_driver.find_element(ElementWarehouse::ALLOW_NOTIFICATION).click
	# $web_driver.find_element(ElementWarehouse::ALLOW_NATIVE_NOTIFICATION).click
end

When('I Sign out') do

end

When('I Sign in with Invalid Credentials') do

end

Then('I Sign in with Demo Credentials') do

end