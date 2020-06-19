# frozen_string_literal: true

wait = Selenium::WebDriver::Wait.new(timeout: 80)

Given('I sign in') do
	$web_driver.find_element(ElementWarehouse::EMAIL_FIELD).send_keys(TestUser.email)
	sleep 3
	$web_driver.find_element(ElementWarehouse::PASSWORD_FIELD).send_keys(TestUser.password)
	sleep 3
	$web_driver.find_element(ElementWarehouse::LOGIN_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::NOT_NOW_NOTIFICATION).click
end

Then('I go to the Documents Library and add the PDF') do
	$web_driver.find_element(ElementWarehouse::DOCUMENTS_LIBRARY_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::ADD_DOCUMENT_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::UPLOAD_BUTTON).send_keys(Dir.pwd, TestUser.pdf_file_path)
	sleep 3
	$web_driver.find_element(ElementWarehouse::SEND_BUTTON).click
end

Then('I add an Image') do
	$web_driver.find_element(ElementWarehouse::ADD_DOCUMENT_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::UPLOAD_BUTTON).send_keys(Dir.pwd, TestUser.image_path)
end

Then('I add an mp3') do
	$web_driver.find_element(ElementWarehouse::ADD_DOCUMENT_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::UPLOAD_BUTTON).send_keys(Dir.pwd, TestUser.mp3_file_path)
end