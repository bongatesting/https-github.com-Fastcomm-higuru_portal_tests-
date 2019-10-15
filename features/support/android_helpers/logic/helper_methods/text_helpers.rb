module TextHelpers
	def includes_text(object, expected_text)
		object_text = object.get_text ## Gets object text
		if !object_text.include?(expected_text) ## Check if text does not exists within object_text, will raise error
			raise "** #{expected_text} does not exist within: #{object_text} **"
		end
	end
	
	def equals_text(object, text)
		if object.class.to_s == "AppiumMethod"
			object_text = object.get_text ## Gets object text
		elsif object.class.to_s == "Selenium"
			object_text = object.text ## Gets object text
		else
			object_text = object ## Gets object text
		end
		
		if object_text != text ## Check if text equals object text
			raise "** #{text} does not exist within: #{object_text} **"
		end		
	end
	
	def wait_for_text(object, text, time_limit = 30)
		Timeout.timeout(time_limit) do
			until object.get_text == text
				sleep 0.5
			end
		end
	end
		
	def wait_for_text_to_disappear(object, text, time_limit = 30)
		Timeout.timeout(time_limit) do
			until object.get_text != text
				sleep 0.5
			end
		end
	end
			
	def wait_for_text_only_to_disappear(text, time_limit = 30)
		Timeout.timeout(time_limit) do
			until finds_exact(text).count <= 0
				sleep 0.5
			end
		end
	end
	
	def find_text_in_object_arr(object, expected_text, time_limit = 30)
		appium_obj_arr = []

		if object.class == String
			object = eval(object)
		end

		Timeout.timeout(time_limit) do
			loop do
				object.find_arr.each_with_index do |obj, index|
					value = object.type_value
					key = object.type_key

					appium_obj_arr << AppiumMethod.new(value, key, index: index)
				end
				
				appium_obj_arr.each_with_index do |obj, index|
					if obj.get_text == expected_text
						return true
					else
						object = AppiumMethod.new(obj.type_value, obj.type_key)
					end
				end
			end
		end
	end
	
	def tap_text_in_object_arr(object, expected_text, time_limit = 30)
		if object.class == String
			object = eval(object)
		end

		Timeout.timeout(time_limit) do
			object.find_arr.each do |obj|
				if obj.text == expected_text
					obj.click
					return true
				end
			end
		end		
	end
	
	def text_is_visible(expected_text)
		if finds_exact(expected_text).count > 0
			return true
		else 
			raise "*** #{expected_text} is not visible ***"
		end
	end

    def generate_random_string(original_string)
        unique_string_value = (0...8).map { (65 + rand(26)).chr }.join
		return original_string + unique_string_value
    end
  
  	def add_number_of_whitespaces(white_spaces, original_string)
		new_string = " " * white_spaces + original_string + " " * white_spaces
		return new_string
    end

  	def tap_text(text_value)
  		find_exact(text_value).click
  	end
end