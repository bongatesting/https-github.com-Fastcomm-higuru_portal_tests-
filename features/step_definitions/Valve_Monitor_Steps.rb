When('I go to Valve Monitor') do
	$web_driver.find_element(PortalWarehouse::VALVE_MONITOR_TAB).click
	$web_driver.find_element(PortalWarehouse::SLEEVE_OK)
	$web_driver.find_element(PortalWarehouse::SLEEVE_WORN)
	$web_driver.find_element(PortalWarehouse::VALVE_TEMP)
	$web_driver.find_element(PortalWarehouse::VALVE_CLOSED)
	$web_driver.find_element(PortalWarehouse::VALVE_OPEN)
	$web_driver.find_element(PortalWarehouse::WIRE_FAULT)
	$web_driver.find_element(PortalWarehouse::TEMP_HISTORY)
	@browser.execute_script("window.scrollBy(0,200)")
end
