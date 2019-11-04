# frozen_string_literal: true

Given('I am on the Sign In Page') do
	$web_driver.find_element(ElementWarehouse::WIDGET).click
end

When('I Sign in with Invalid Credentials') do

end

Then('I Sign in with Demo Credentials') do

end

Then('I Sign in with my own valid Credentials') do

end

When('I Sign out') do

end

Given('I am already signed in') do

end