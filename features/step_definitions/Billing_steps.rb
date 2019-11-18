Then('I click on Billing')do
  $web_driver.find_element(ElementWarehouse::AGENT_IMAGE).click
  $web_driver.find_element(ElementWarehouse::PAYMENT_METHOD).click
  $web_driver.find_element(ElementWarehouse::BILLING).click
  $web_driver.find_element(ElementWarehouse::BILLING_INFO).click


end