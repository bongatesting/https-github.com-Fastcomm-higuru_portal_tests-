# frozen_string_literal: true

wait = Selenium::WebDriver::Wait.new(timeout: 30)

Then('I click on Stats') do
  $web_driver.find_element(ElementWarehouse::GO_BACK_TO_DASHBOARD).click
  $web_driver.find_element(ElementWarehouse::STATS_TAB).click
  $web_driver.find_element(ElementWarehouse::CHANNELS_TAB).click
  $web_driver.find_element(ElementWarehouse::TEAMS_TAB).click
  $web_driver.find_element(ElementWarehouse::PEOPLE_TAB).click
  $web_driver.find_element(ElementWarehouse::DOCUMENTS_LIBRARY_TAB).click
  $web_driver.find_element(ElementWarehouse::CANNED_REPLIES_TAB).click
  $web_driver.find_element(ElementWarehouse::CONVERSATION_HISTORY_TAB).click
  $web_driver.find_element(ElementWarehouse::BOTS_TAB).click
end