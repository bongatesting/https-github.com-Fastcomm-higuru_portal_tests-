Then('I go to the Company Unit settings and create a second Company Unit') do
	$web_driver.find_element(ElementWarehouse::MAIN_COMPANY_UNIT).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ADD_COMPANY_UNIT_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::COMPANY_UNIT_NAME).send_keys('Zulu')
	sleep 3
	$web_driver.find_element(ElementWarehouse::CREATE_NEW_COMPANY_UNIT_ADD_BUTTON).click
	sleep 3
	if $web_driver.find_elements(ElementWarehouse::QA_DASHBOARD_TEXT).first
		sleep 6
		$stdout.puts 'Company unit successfully created'
	else
		raise('HG-2222 - Bug still exists')
	end
end