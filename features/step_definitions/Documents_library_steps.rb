Then('I click on Documents Library tab') do
  $web_driver.find_element(ElementWarehouse::DOCUMENT_LIBRARY_TAB).click
end

Then('I click on Add document button') do
  $web_driver.find_element(ElementWarehouse::ADD_DOCUMENT_BUTTON).click
end

Then('I click on Upload the Document') do
  $web_driver.find_element(ElementWarehouse::UPLOAD_BUTTON).click
  $web_driver.find_element(ElementWarehouse::ADD_ATTACHMENT).send_keys(Dir.pwd, TestUser.pdf_file_path)
  $web_driver.find_element(ElementWarehouse::SEND_BUTTON).click
end