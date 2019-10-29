When('I go to my Device') do
	$web_driver.find_element(PortalWarehouse::MY_DEVICE).click
	$web_driver.find_element(PortalWarehouse::DEVICE_INFO)
	$web_driver.find_element(PortalWarehouse::GATEWAY_STATUS)
	$web_driver.find_element(PortalWarehouse::CONTROLS)
	$web_driver.find_element(PortalWarehouse::LOCATION)
	$web_driver.find_element(PortalWarehouse::MESSAGES)
end

When('I edit my device alarm settings') do
	$web_driver.find_element(PortalWarehouse::DEVICE_MANAGEMENT_TAB).click
	$web_driver.find_element(PortalWarehouse::OFFICE_TESTING).click
	sleep 1
	$web_driver.find_element(PortalWarehouse::MY_VALVE).click
	sleep 1
	$web_driver.find_element(PortalWarehouse::TEMP_THREE_DOT_MENU).click
	$web_driver.find_element(PortalWarehouse::EDIT_ALARM).click
	sleep 3
	$web_driver.find_element(PortalWarehouse::EQUALS).click
	$web_driver.find_element(PortalWarehouse::VALUE_FIELD).clear
	$web_driver.find_element(PortalWarehouse::VALUE_FIELD).send_keys('40')
	$web_driver.find_element(PortalWarehouse::UPDATE_BUTTON).click
end

Then('I change the Temp and Confirm it changed') do
	system( "python script.py" )
	$web_driver.find_element(PortalWarehouse::DASHBOARD_TAB).click
	$web_driver.find_element(PortalWarehouse::MY_DEVICE).click
	$web_driver.find_element(PortalWarehouse::DEVICE_VALUE_TEMP)
	$web_driver.find_element(PortalWarehouse::MESSAGES).click
	scroll_in_dashboard
	$web_driver.find_element(PortalWarehouse::MESSAGE_TEMP)
end