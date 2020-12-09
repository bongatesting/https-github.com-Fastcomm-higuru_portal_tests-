module DropdownMenuHelpers
  def select_option_portal(object, option_to_select)
    object.find_el.find_elements(:tag_name, 'option').find {|el| el.text == option_to_select}.click
  end

  def exist_in_dropdown_menu_portal(object, option)
    object = eval(object) if object.class == String
    exist = object.find_el.find_elements(:tag_name, 'option').find {|el| el.text == option}.class.to_s == "Selenium::WebDriver::Element"
    if exist
      return true
    else
      raise "** Could not find option: #{option}, in #{object.type_value} dropdown menu **"
    end
  end

  def select_random_option_portal(object)
    all_options = object.find_el.find_elements(:tag_name, 'option')
    random_option = all_options.sample
    random_option.click
  end

  def not_exist_in_dropdown_menu_portal(object, option)
    object = eval(object) if object.class == String
    exist = object.find_el.find_elements(:tag_name, 'option').find {|el| el.text == option}.class.to_s == "Selenium::WebDriver::Element"
    if not exist
      return true
    else
      raise "** Could find option: #{option}, in #{object.type_value} dropdown menu **"
    end
  end
end