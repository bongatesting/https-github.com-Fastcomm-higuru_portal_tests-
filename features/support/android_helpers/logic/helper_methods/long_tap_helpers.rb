module LongTapHelpers
	def long_tap_on_item(object, item_text)
		appium_obj_arr = []
		
		object.find_arr.each_with_index do |item, index|
			value = object.type_value
			key = object.type_key
			
			appium_obj_arr << AppiumMethod.new(value, key, index: index)
		end
		
		appium_obj_arr.each_with_index do |item, index|
			value = object.type_value
			key = object.type_key
			
			if item.get_text == item_text
				@tappable_item = AppiumMethod.new(value, key, index: index)
				break
			end
		end
		
		## Get coordinates
		dementions = @tappable_item.find_el.rect
		height = dementions.height
		width = dementions.width
		x_coordinate = dementions.x
		y_coordinate = dementions.y
		
		x_center = x_coordinate + width / 2
		y_center = y_coordinate + height / 2

    Appium::TouchAction.new.long_press(x: x_center, y: y_center, durantion:1000).perform ## Long tap on given x and y coordinates
 	end

 	def long_tap(object)
 		@tappable_item = object

 		if @tappable_item.class == Selenium::WebDriver::Element
			dementions = @tappable_item.rect
 		else
			dementions = @tappable_item.find_el.rect
 		end

		height = dementions.height
		width = dementions.width
		x_coordinate = dementions.x
		y_coordinate = dementions.y
		
		x_center = x_coordinate + width / 2
		y_center = y_coordinate + height / 2


    	Appium::TouchAction.new.long_press(x: x_center, y: y_center, duration:500).perform ## Long tap on given x and y coordinates
	 end
end