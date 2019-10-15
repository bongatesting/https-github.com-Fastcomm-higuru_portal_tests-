module ElementArrayHelpers
	def tap_index(object, index)
		index = index - 1 
		object.find_arr[index].tap_element
	end
	
	def select_first_check_box(object)
		appium_obj_arr = []
		
		object.find_arr.each_with_index do |item, index|
			value = object.type_value
			key = object.type_key
			
			appium_obj_arr << AppiumMethod.new(value, key, index: index)
		end

		appium_obj_arr.first.tap_element
		# first_checkbox = refreshing_stale_object(object: object_arr, action: 0 ,retry_attempts: 5)
		
		# refreshing_stale_object(object: first_checkbox, action: :click, retry_attempts: 5)
	end

	def tap_last_item(object)
		object.find_arr.last.click
	end
	
	def get_list(object)
		appium_obj_arr = []
		object.find_arr.each_with_index do |list_item, index|
			value = object.type_value
			key = object.type_key
			
			appium_obj_arr << AppiumMethod.new(value, key, index: index)
		end

		
		if appium_obj_arr.empty?
			raise "** No item in list **"
		else
			return appium_obj_arr
		end
	end
	
	def compare_lists(list_1, list_2)
		if list_1.count != list_2.count 
			raise "*** First List does not equal the second list ***"
		end
	end

	def find_element_with_text(elements, search_terms)
		comment = elements.find do |element|
			text = element.text
			contains_all_terms = text.include? search_terms if search_terms.instance_of?(String)
			contains_all_terms = search_terms.all? { |term| text.include?(term) } if search_terms.instance_of?(Array)
			contains_all_terms
		end
	end
end