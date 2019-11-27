Then('I click on Agent_image')do
  $web_driver.find_element(ElementWarehouse::AGENT_IMAGE).click
  $web_driver.find_element(ElementWarehouse::BILLING).click
  $web_driver.find_element(ElementWarehouse::BILLING_INFO).click
end