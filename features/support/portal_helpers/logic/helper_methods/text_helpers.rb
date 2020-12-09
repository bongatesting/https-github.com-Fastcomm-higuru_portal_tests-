module TextHelpers
  def equals_text_portal(object, expected_text)
    if object.class.to_s == "SeleniumMethod"
      if object.get_text_inside == ""
        object_text = object.get_text
      else
        object_text = object.get_text_inside ## Gets object text
      end
    elsif object.class.to_s == "Selenium"
      object_text = object.text ## Gets object text
    elsif object.class.to_s == "Selenium::WebDriver::Element"
      object_text = object.get_text ## Gets object text      
    else
      object_text = object ## Gets object text
    end
    
    assert_equals(object_text, expected_text) 

    return true
  end

  def includes_text_portal(object, expected_text)
    if object.class.to_s == "SeleniumMethod"
      object_text = object.get_text ## Gets object text
    elsif object.class.to_s == "Selenium"
      object_text = object.text ## Gets object text
    elsif object.class.to_s == "Selenium::WebDriver::Element"
      object_text = object.attribute('value') ## Gets object text
    elsif object.class.to_s == "String"
      object_text = object
    else
      object_text = object ## Gets object text
    end
    
    if !expected_text.include?(object_text)
      raise "** #{expected_text} does not exist within: #{object_text} **"
    end
  end


  def assert_equals(text, expected_text) 
    if text != text
      raise "** #{expected_text} does not equal: #{text} **"
    end
  end

  def assert_includes(text, expected_text) 
    if !text.include?(expected_text)
      raise "** #{expected_text} does not exist within: #{text} **"
    end
  end

  def not_equal_text_portal(object, expected_text)
    if object.class.to_s == "SeleniumMethod"
      object_text = object.get_text_inside ## Gets object text
    elsif object.class.to_s == "Selenium"
      object_text = object.text ## Gets object text
    else
      object_text = object ## Gets object text
    end
        
    if object_text == expected_text ## Check if text equals object text
      raise "** #{expected_text} does not exist within: #{object_text} **"
    end  
  end

  def assert_contains(collection, element)
    if collection.include? element
      raise "** Element not found in collection. Element: #{object_text} Collection: #{collection} **"
    end  
  end

  def alert_exist(alert_text, time_limit = 30)
    wait = Selenium::WebDriver::Wait.new(:timeout => time_limit)
    wait.until {$web_driver.find_elements(:xpath, "//*[contains(text(), '#{alert_text}')]").count > 0}
  end

  # Replaces placeholders in text
  # f.e. ab{random}c would be converted to ab19556121542c
  # f.e. ab{scenario_id}c would be converted to ab195561c
  def fill_placeholders(text)
    text = text.gsub("{random}", DateTime.now.strftime('%Q'))
    text = text.gsub("{scenario_id}", $scenario_id.to_s)
    scenario_unique_phone_number_suffix = ($scenario_id % 1000000).to_s
    scenario_unique_phone_number = "+48890#{scenario_unique_phone_number_suffix}"
    text = text.gsub("{scenario_unique_phone_number}", scenario_unique_phone_number)
    return text
  end

  def find_div_contains_text(expected_text)
    table = $web_driver.find_elements(:xpath, "//div[contains(text(), '#{expected_text}')]")
    puts table
    table.each do |td|
      if td.text == expected_text
        return true
      end
    end
    raise "** Could not find #{expected_text} in tbody"
  end

  def find_span_contains_text(expected_text)
    table = $web_driver.find_elements(:xpath, "//span[contains(text(), '#{expected_text}')]")
    puts table
    table.each do |td|
      if td.text == expected_text
        return true
      end
    end
    raise "** Could not find #{expected_text} in tbody"
  end
end