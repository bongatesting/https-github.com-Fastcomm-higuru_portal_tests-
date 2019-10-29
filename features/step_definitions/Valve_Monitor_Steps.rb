# frozen_string_literal: true

When('I go to Valve Monitor') do
	$web_driver.find_element(PortalWarehouse::VALVE_MONITOR_TAB).click
	$web_driver.find_element(PortalWarehouse::SLEEVE_OK)
	$web_driver.find_element(PortalWarehouse::SLEEVE_WORN)
	$web_driver.find_element(PortalWarehouse::VALVE_TEMP_TEXT)
	$web_driver.find_element(PortalWarehouse::VALVE_SHUT)
	$web_driver.find_element(PortalWarehouse::VALVE_OPEN)
	$web_driver.find_element(PortalWarehouse::FAULTY_WIRE)
	$web_driver.find_element(PortalWarehouse::TEMP_HISTORY)
end

When('I set my Temperature and confirm it changed') do
	system( "python script.py" )
	$web_driver.find_element(PortalWarehouse::VALVE_TEMP_TEXT)
	$web_driver.find_element(PortalWarehouse::DEGREES_CELSIUS)
	$web_driver.find_element(PortalWarehouse::RED_ICON)
end