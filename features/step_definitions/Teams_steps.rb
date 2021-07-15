# frozen_string_literal: true

wait = Selenium::WebDriver::Wait.new(timeout: 80)

Then('I add A Team') do
	$web_driver.find_element(ElementWarehouse::TEAMS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ADD_TEAM_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::TEAM_NAME_FIELD).send_keys('Team Two')
	sleep 3
	$web_driver.find_element(ElementWarehouse::TEAM_DESCRIPTION_FIELD).send_keys('Second Team')
	sleep 3
	$web_driver.find_element(ElementWarehouse::ASSIGN_ROUTING_TAG).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::SEARCH_ROUTING_TAG).send_keys('General')
	sleep 3
	$web_driver.find_element(ElementWarehouse::SELECT_ROUTING_TAG_1).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ASSIGN_ROUTING_TAGS_SAVE).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CREATE_TEAM_BUTTON).click
	sleep 5
	$web_driver.find_element(ElementWarehouse::INACTIVE_TEAMS_TAB).click
end

Then('I edit the Team description and Name') do
	$web_driver.find_element(ElementWarehouse::TEAMS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::INACTIVE_TEAMS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::TEAM_TWO).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::TEAM_EDIT_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::TEAM_NAME_FIELD_1).click
	sleep 3
	$web_driver.action.key_down(:control).send_keys('a').key_down(:control).send_keys(:backspace).key_up(:control).perform
	sleep 3
	$web_driver.find_element(ElementWarehouse::TEAM_NAME_FIELD_1).send_keys('New Team Name')
	sleep 3
	$web_driver.find_element(ElementWarehouse::TEAM_DESCRIPTION_FIELD_2).click
	sleep 3
	$web_driver.action.key_down(:control).send_keys('a').key_down(:control).send_keys(:backspace).key_up(:control).perform
	sleep 3
	$web_driver.find_element(ElementWarehouse::TEAM_DESCRIPTION_FIELD_2).send_keys('Updated Team description')
	sleep 3
	$web_driver.find_element(ElementWarehouse::UPDATE_TEAM_BUTTON).click
	sleep 7
	$web_driver.find_element(ElementWarehouse::TEAM_TWO).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::TEAM_DROP_DOWN).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::DELETE_TEAM).click
	sleep 3
end

Then('I attempt to delete the Team') do
	$web_driver.find_element(ElementWarehouse::TEAMS_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::TEAM_ONE).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::TEAM_DROP_DOWN).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::DELETE_TEAM).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::UNDERSTAND_BUTTON).click
	sleep 4
end