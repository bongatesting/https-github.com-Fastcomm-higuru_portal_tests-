Then('I Click on the Conversations tab') do
  $web_driver.find_element(ElementWarehouse::CONVERSATIONS_TAB).click
  $web_driver.find_element(ElementWarehouse::INBOUND_TAB)
  $web_driver.find_element(ElementWarehouse::OUTBOUND_TAB).click
  $web_driver.find_element(ElementWarehouse::CLOSE_NOTIFICATION_CONVO_PAGE).click
  $web_driver.find_element(ElementWarehouse::MAIN_MENU).click
end

Then('I click on Conversation History')do
  $web_driver.find_element(ElementWarehouse::CONVERSATION_HISTORY_TAB).click
  $web_driver.find_element(ElementWarehouse::CONVO_HISTORY)
  $web_driver.find_element(ElementWarehouse::CONVO)
  $web_driver.find_element(ElementWarehouse::CONVO_SEARCH_FIELD).send_keys('10203')
  $web_driver.find_element(ElementWarehouse::CONVERSATION_HISTORY_TAB).click
  if $web_driver.find_elements(ElementWarehouse::TEN_SHOULD_NOT_SEE).first
    raise('Search Results not working')
  else
    $stdout.puts ('Search Field Working').green
    $stdout.flush
  end
end

Given('The Conversation Expiry Slider is Disabled') do
  $web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.email)
  $web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
  $web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
  sleep 3
  $web_driver.find_element(ElementWarehouse::NOT_NOW_NOTIFICATION).click
  sleep 2
  $web_driver.find_element(ElementWarehouse::COMPANY_UNIT_SETTINGS).click
  sleep 2
  $web_driver.find_element(ElementWarehouse::SETTINGS).click
end

Then('I Adjust Conversation Expiry Slider by One hour') do
  browser_scroll
  A = $web_driver.find_element(ElementWarehouse::CONVERSATION_RESOLVE_SLIDER)
  A.send_keys(:up)
end

Then('I initiate a Conversation') do
  open_new_tab
  $web_driver.get "file:///C:/Users/Bonga%20Fati/Desktop/QA%20Test%20run/WebmessageQA39.html"
  $web_driver.find_element(ElementWarehouse::WEB_WIDGET).click
  sleep 3
  $web_driver.find_element(ElementWarehouse::WEB_WIDGET_CHAT_FIELD).send_keys('This is a Conversation Expiry slider Test')
  sleep 2
  $web_driver.find_element(ElementWarehouse::WEB_WIDGET_CHAT_FIELD).send_keys(:return)
  sleep 4
  $web_driver.close.last
  $web_driver.switch_to.window( $web_driver.window_handles.first )
end

Then('I check if the conversation has been Closed after one hour') do
  $web_driver.find_element(ElementWarehouse::CONVERSATION_HISTORY_TAB).click
end