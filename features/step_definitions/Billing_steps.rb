Then('I click on Agent_image')do
  $web_driver.find_element(ElementWarehouse::AGENT_IMAGE).click
  end
Then('I click on Billing')do
  $web_driver.find_element(ElementWarehouse::BILLING).send_keys('Standard Plan')
	$web_driver.find_element(ElementWarehouse::BILLING).click
	end
Then('I click on billing info')do
	$web_driver.find_element(ElementWarehouse::BILLING_INFO).click
end