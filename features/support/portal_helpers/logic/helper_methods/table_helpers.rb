module TableHelpers
  def find_text_in_table_portal(expected_text, table_value = "datatableGeneric")
    table = $web_driver.find_elements(:xpath, "//*[@id='#{table_value}']/tbody/tr/td")
    table.each do |td|
      if td.text == expected_text
        return true
      end
    end
    raise "** Could not find #{expected_text} in table"
  end    

  def tap_text_in_table_portal(expected_text, table_value = "datatableGeneric")
    table = $web_driver.find_elements(:xpath, "//*[@id='#{table_value}']/tbody/tr/td")
    table.each do |td|
      if td.text == expected_text
        td.click
        return true
      end
    end
    raise "** Could not find #{expected_text} in table"
  end

  def tap_text_including_in_table_portal(expected_text, table_value = "datatableGeneric")
    table = $web_driver.find_elements(:xpath, "//*[@id='#{table_value}']/tbody/tr/td")
    table.each do |td|
      if td.text.include?(expected_text)
        td.click
        return true
      end
    end
    raise "** Could not find #{expected_text} in table"
  end

  def find_text_in_table_header_portal(expected_text, table_value = "datatableGeneric")
    table = $web_driver.find_elements(:xpath, "//*[@id='#{table_value}']/thead/tr/th")
    table.each do |th|
      if th.text == expected_text
        return true
      end
    end
    raise "** Could not find #{expected_text} in table"
  end 

  def find_no_text_in_table_portal(expected_text, table_value = "datatableGeneric", raise_error = true)
    table = $web_driver.find_elements(:xpath, "//*[@id='#{table_value}']/tbody/tr/td")
    table.each do |td|
      if td.text == expected_text
        raise "** Could find #{expected_text} in table" if raise_error
        return false unless raise_error
      end
    end
    return true
  end

  def find_text_in_portal_notification_table(expected_text, table_value = "description")
    table = $web_driver.find_elements(:xpath, "//span[contains(text(), '#{expected_text}')]")
    table.each do |span|
      if span.text.include?(expected_text)
        return true
      end
    end
    raise "** Could not find #{expected_text} in portal notification table"
  end

  def scroll_to_point_in_table(table_id, position)
    $web_driver.execute_script("$('##{table_id}').scrollTop(#{position})")
    wait_for_ajax_portal
  end
end