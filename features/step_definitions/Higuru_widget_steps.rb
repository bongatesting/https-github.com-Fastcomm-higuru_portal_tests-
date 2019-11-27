Then('I click on the WIDGET') do
	$web_driver.find_element(ElementWarehouse::WIDGET).click
	$web_driver.find_element(xpath: "//button[contains(.,'Get Started')]" )
	$web_driver.find_element(xpath: "//button[contains(.,'Support')]" )
	$web_driver.find_element(xpath: "//button[contains(.,'Product Info')]" )
	$web_driver.find_element(xpath: "//button[contains(.,'Feedback')]" )
	$web_driver.find_element(xpath: "//button[contains(.,'Chat with us')]" )
end

Then('I click on get started') do
	$web_driver.find_element(ElementWarehouse::GET_STARTED_BUTTON).click
	$web_driver.find_element(xpath: "//button[contains(.,'Yes')]" )
	$web_driver.find_element(xpath: "//button[contains(.,'No')]" )
end

Then('I click on the Yes response') do
	$web_driver.find_element(ElementWarehouse::YES_BUTTON).click
	$web_driver.find_element(xpath: "//button[contains(.,'Yes')]" )
	$web_driver.find_element(xpath: "//button[contains(.,'No')]" )
end

Then('I click on the Yes response') do
	$web_driver.find_element(ElementWarehouse::NO_BUTTON).click
	$web_driver.find_element(ElementWarehouse::CONVERSATION_RESOLVED)
	puts 'Conversation resolved successfully'
end
