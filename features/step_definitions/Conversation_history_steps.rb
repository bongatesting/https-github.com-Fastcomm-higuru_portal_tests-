Then('I click on Conversation History')do
	$web_driver.find_element(ElementWarehouse::CONVERSATION_HISTORY_TAB).click
	$web_driver.find_element(ElementWarehouse::CONVO_HISTORY)
	$web_driver.find_element(ElementWarehouse::CONVO)
	$web_driver.find_element(ElementWarehouse::CONVO_SEARCH_FIELD).send_keys('10203')
	$web_driver.find_element(ElementWarehouse::CONVERSATION_HISTORY_TAB).click
	if $web_driver.find_elements(ElementWarehouse::TEN_SHOULD_NOT_SEE).first
		raise('Search Results not working')
	else
		puts 'Search Field Working'.green
	end
end