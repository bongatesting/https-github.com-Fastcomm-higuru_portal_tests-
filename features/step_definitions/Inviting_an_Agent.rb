Given('I go to the log in page and login')do
	$web_driver.navigate.to "https://#{ENV['HOST']}.hi.guru/"
end

Then('I add the Agent')do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).click
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.test_user_1_email)
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).click
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.hi_guru_password)
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::NOT_NOW_NOTIFICATION).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::PEOPLE_TAB).click
	$web_driver.find_element(ElementWarehouse::ADD_PERSON_BUTTON).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::AGENT_NAME_FIELD).click
	$web_driver.find_element(ElementWarehouse::AGENT_NAME_FIELD).send_keys('Agent 1')
	sleep 2
	$web_driver.find_element(ElementWarehouse::AGENT_EMAIL_FIELD).click
	$web_driver.find_element(ElementWarehouse::AGENT_EMAIL_FIELD).send_keys(TestUser.hi_guru_email)
	sleep 2
	$web_driver.find_element(ElementWarehouse::AGENT_CREATE_BUTTON).click
	sleep 2
	# $web_driver.find_element(ElementWarehouse::PROFILE_BUTTON).click
	# sleep 2
	# $web_driver.find_element(ElementWarehouse::SIGN_OUT).click
  $web_driver.execute_script( "window.open()" )
  $web_driver.switch_to.window( $web_driver.window_handles.last )
  $web_driver.get 'https://login.microsoftonline.com/'
	sleep 4
  $web_driver.find_element(ElementWarehouse::OUTLOOK_EMAIL_FIELD).send_keys('katherine@hi.guru')
  sleep 2
  $web_driver.find_element(ElementWarehouse::OUTLOOK_NEXT_BUTTON).click
  sleep 4
  $web_driver.find_element(ElementWarehouse::OUTLOOK_PASSWORD_FIELD).type('2Unicorn1809')
  sleep 4
  $web_driver.find_element(ElementWarehouse::OUTLOOK_SIGN_IN_BUTTON).click
	sleep 2
	if $web_driver.find_elements(ElementWarehouse::SKIP_FOR_NOW_TEXT).first
		$web_driver.find_elements(ElementWarehouse::SKIP_FOR_NOW_TEXT).first.click
		$stdout.puts 'Skip Option Displayed'.green
	elsif $web_driver.find_elements(ElementWarehouse::OUTLOOK_STAY_SIGNED_IN_NO_BUTTON).first
		$web_driver.find_elements(ElementWarehouse::OUTLOOK_STAY_SIGNED_IN_NO_BUTTON).first.click
		$stdout.puts 'Stay Signed in Displayed'.blue
	end
	$stdout.flush
	sleep 5
  $web_driver.find_element(ElementWarehouse::OUTLOOK_ICON).click
	sleep 10
	$web_driver.switch_to.window( $web_driver.window_handles.last )
  $web_driver.find_element(ElementWarehouse::OUTLOOK_AGENT_INVITE_EMAIL_TEXT).click
	sleep 6
	$web_driver.find_element(ElementWarehouse::AGENT_CONFIRM_EMAIL_BUTTON).click
  sleep 4
	# $web_driver.switch_to.window( $web_driver.window_handles.last )
  $web_driver.find_element(ElementWarehouse::NEW_PASSWORD_FIELD).send_keys(TestUser.hi_guru_password)
  $web_driver.find_element(ElementWarehouse::CONFIRM_PASSWORD_FIELD).send_keys(TestUser.hi_guru_password)
	sleep 2
  $web_driver.find_element(ElementWarehouse::NEW_PASSWORD_DONE_BUTTON).click
	sleep 4
  $web_driver.find_element(ElementWarehouse::PROFILE_BUTTON).click
  $web_driver.find_element(ElementWarehouse::SIGN_OUT).click
end

Then('I delete the Agent')do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).click
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.test_user_1_email)
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).click
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.hi_guru_password)
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::NOT_NOW_NOTIFICATION).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::PEOPLE_TAB).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::AGENT_PLACEHOLDER).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::AGENT_DROP_DOWN_MENU).click
	sleep 1
	$web_driver.find_element(ElementWarehouse::DELETE_USER_BUTTON).click
	sleep 1
	$web_driver.find_element(ElementWarehouse::PROFILE_BUTTON).click
	sleep 2
	$web_driver.find_element(ElementWarehouse::SIGN_OUT).click
end