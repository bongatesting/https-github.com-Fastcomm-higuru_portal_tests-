module Scroll
	
	def scroll_down_from_middle_screen
		begin
			Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.9, offset_x: 0.4, offset_y: 0.2, duration:600).perform.release
		rescue Selenium::WebDriver::Error::UnknownError
			puts "An unknown server-side error occurred while processing the command. Original error: Swipe did not complete successfully"

			Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.9, offset_x: 0.4, offset_y: 0.2, duration:600).perform
		end
	end

	def scroll_on(object:, direction:, duration: 500, scroll_intensity: 200)
		dementions = object.find_el.rect
		height = dementions.height
		width = dementions.width
		x_coordinate = dementions.x
		y_coordinate = dementions.y

		x_center  = x_coordinate + width / 2
		y_center  = y_coordinate + height / 2

		case direction
		when "up"
			Appium::TouchAction.new.swipe(start_x: x_center, start_y: y_center + scroll_intensity, end_x: x_center, end_y: y_center, duration: duration).perform
		else
			Appium::TouchAction.new.swipe(start_x: x_center, start_y: 400, end_x: x_center, end_y: y_center, duration: duration).perform
		end
	end

	def scroll_until_text_found(object:, expected_text:, direction: "up", time_limit: 50)
		Timeout.timeout(time_limit) do
			until object.find_arr.find {|obj| obj.text == expected_text} != nil
				scroll_on(object: object, direction: direction, duration: 600)
				sleep 2
			end			
		end
	end
end