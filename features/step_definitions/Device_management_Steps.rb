When('I go to my Device') do
		$web_driver.find_element(PortalWarehouse::MY_DEVICE).click
		$web_driver.find_element(PortalWarehouse::DEVICE_INFO)
		$web_driver.find_element(PortalWarehouse::GATEWAY_STATUS)
		$web_driver.find_element(PortalWarehouse::CONTROLS)
		$web_driver.find_element(PortalWarehouse::LOCATION)
		$web_driver.find_element(PortalWarehouse::MESSAGES).click
		$web_driver.find_element(PortalWarehouse::TEMPERATURE)
	end