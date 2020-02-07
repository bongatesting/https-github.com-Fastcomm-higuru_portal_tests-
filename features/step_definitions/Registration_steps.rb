Given('I am viewing the log in page') do
	$web_driver.navigate.to "https://#{ENV['HOST']}.hi.guru/"
end

Then('I enter an Invalid Email') do
	$web_driver.find_element(ElementWarehouse::SIGN_UP_BUTTON).click
	$web_driver.find_element(ElementWarehouse::BUSINESS_EMAIL_FIELD).send_keys('incorrect!test.')
	$web_driver.find_element(ElementWarehouse::BUSINESS_PASSWORD_FIELD).send_keys('test123.')
	$web_driver.find_element(ElementWarehouse::SIGN_UP_CHECKBOX).click
	$web_driver.find_element(ElementWarehouse::NEXT_BUTTON_1).click
end

Then('I sign in with a valid email and OTP') do
	$web_driver.find_element(ElementWarehouse::SIGN_UP_BUTTON).click
	$web_driver.find_element(ElementWarehouse::BUSINESS_EMAIL_FIELD).send_keys('katherine+1980@hi.guru')
	$web_driver.find_element(ElementWarehouse::BUSINESS_PASSWORD_FIELD).send_keys('12345678')
	$web_driver.find_element(ElementWarehouse::SIGN_UP_CHECKBOX).click
	$web_driver.find_element(ElementWarehouse::NEXT_BUTTON_1).click
	$web_driver.find_element(ElementWarehouse::VERIFICATION_TEXT)
	$web_driver.execute_script( "window.open()" )
	$web_driver.switch_to.window( $web_driver.window_handles.last )
	$web_driver.navigate.to 'https://mail.google.com'
	 #if $web_driver.find_elements(ElementWarehouse::GMAIL_SIGN_IN_BUTTON).first
	# 	$web_driver.find_elements(ElementWarehouse::GMAIL_SIGN_IN_BUTTON).first.click
	# 	$web_driver.switch_to.window( $web_driver.window_handles.last )
	# 	$stdout.puts 'Sign In Button Shown'
	#   $stdout.flush
	# elsif A = $web_driver.find_elements(ElementWarehouse::GMAIL_EMAIL_FIELD).first
	# 	$stdout.puts 'Sign In Button Not Shown'
	#   $stdout.flush
	#end
	A = $web_driver.find_elements(ElementWarehouse::GMAIL_EMAIL_FIELD).first
	A.send_keys('katherine@hi.guru')
	sleep 2
	$web_driver.find_element(ElementWarehouse::GMAIL_NEXT_BUTTON).click
	sleep 4
	B = $web_driver.find_element(ElementWarehouse::GMAIL_PASSWORD_FIELD)
	sleep 2
	B.type('2unicorn')
	$web_driver.find_element(ElementWarehouse::GMAIL_PASSWORD_NEXT_BUTTON).click
	sleep 6
	$web_driver.find_element(ElementWarehouse::GMAIL_VERIFICATION_TEXT).click
	CODE = $web_driver.find_element(ElementWarehouse::VERIFICATION_CODE).text
	sleep 2
	$web_driver.close.last
	sleep 2
	$web_driver.switch_to.window( $web_driver.window_handles.first )
	$web_driver.find_element(ElementWarehouse::OTP_FIELD).send_keys(CODE)
	sleep 2
	$web_driver.find_element(ElementWarehouse::OTP_NEXT_BUTTON).click
end

Then('I create my profile') do
	$web_driver.find_element(ElementWarehouse::CREATE_YOUR_PROFILE_TEXT)
	NAME_FIELD = $web_driver.find_element(ElementWarehouse::ENTER_NAME_FIELD)
	NAME_FIELD.send_keys(TestUser.name)
	$web_driver.find_element(ElementWarehouse::ADD_IMAGE_ICON).click
	$web_driver.find_element(ElementWarehouse::CHOOSE_FILE_BUTTON).click
	$web_driver.find_element(ElementWarehouse::CHOOSE_FILE_BUTTON).send_keys(bird-people-art-water-3577391.jpg)
	$web_driver.find_element(ElementWarehouse::PROFILE_IMAGE_SELECT_BUTTON).click
	$web_driver.find_element(ElementWarehouse::NEXT_BUTTON).click
	$web_driver.find_element(ElementWarehouse::CREATE_YOUR_COMPANY_TEXT)
	$web_driver.find_element(ElementWarehouse::ENTER_NAME_FIELD).click
	$web_driver.find_element(ElementWarehouse::ENTER_NAME_FIELD).send_keys(name)
	$web_driver.find_element(ElementWarehouse::ADD_IMAGE_ICON).click
	$web_driver.find_element(ElementWarehouse::CHOOSE_FILE_BUTTON).click
	$web_driver.find_element(ElementWarehouse::CHOOSE_FILE_BUTTON).send_keys(bird-people-art-water-3577391.jpg)
	$web_driver.find_element(ElementWarehouse::PROFILE_IMAGE_SELECT_BUTTON).click
	$web_driver.find_element(ElementWarehouse::DONE_BUTTON)
	$web_driver.find_element(ElementWarehouse::DASHBOARD_TEXT)
end
