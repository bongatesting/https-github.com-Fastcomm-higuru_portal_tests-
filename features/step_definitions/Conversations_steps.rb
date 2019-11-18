Then('I Click on the Conversations tab') do
  $web_driver.find_element(ElementWarehouse::CONVERSATIONS_TAB).click
  $web_driver.find_element(ElementWarehouse::INBOUND_TAB)
  $web_driver.find_element(ElementWarehouse::OUTBOUND_TAB).click
  $web_driver.find_element(ElementWarehouse::CLOSE_NOTIFICATION_CONVO_PAGE).click
  $web_driver.find_element(ElementWarehouse::MAIN_MENU).click
end