module WaitHelpers
	def wait_for(object, time_limit = 30)
		$app_driver.no_wait
			until object.find_arr != nil ## Check object
				sleep 0.5
			end
			
		begin
			Timeout.timeout(time_limit) do
				until object.find_arr.count > 0 ## Check if object is visible
					sleep 0.5
				end
			end
		rescue Timeout::Error
			if object.type_key == :xpath
				raise "** Could not find xpath **"
			end
			raise "** Could not find #{object.type_value} **"
		end
	end
	
	def scroll_wait_for(object, bot_obj, top_obj, scroll_times: 10, time_limit: 30)
		$app_driver.no_wait
		counter = 0

		Timeout.timeout(time_limit) do
			until object.find_arr.count > 0 ## Object to look for
				scroll_bottem_to_top = Appium::TouchAction.new.swipe(start_x: 560, start_y: 1520, end_x: 560, end_y: 330, duration: 600)
				scroll_top_to_bottem = Appium::TouchAction.new.swipe(start_x: 560, start_y: 330, end_x: 560, end_y: 1520, duration: 600)
				if counter == scroll_times
					raise "** Cannot find #{object.type_value} on activity #{current_activity} **"
				else
					if top_obj.find_arr.count > 0
						scroll_bottem_to_top.perform
						sleep 1
						counter += 1
						puts "Scrolled bottem to top, counter: #{counter}"
					elsif bot_obj.find_arr.count > 0
						scroll_top_to_bottem.perform
						sleep 1
						counter += 1
						puts "Scrolled top to bottem, counter: #{counter}"
					else
						raise "** Could not find top object #{top_obj.type_value} or bottem object #{bot_obj.type_value} **"
					end
				end
			end
		end
	end
	
	def wait_for_element_to_disappear(object, time_limit = 30)
		Timeout.timeout(time_limit) do
			until object.find_arr != nil ## Check object
				sleep 0.5
			end
			
			begin
				until object.find_arr.count <= 0 ## Check until object is not visible anymore
					sleep 0.5
				end
			rescue Timeout::Error
				raise "** #{object} Stayed visible within the #{time_limit} seconds time limit **"
			end
		end		
	end
	
	def wait_for_activity(activity_wanted, time_limit = 30)
		Timeout.timeout(time_limit) do
			until current_activity == activity_wanted
				sleep 0.5
			end
		end
	end
	
	def wait_for_any_activity(activities_wanted, time_limit = 30)
		Timeout.timeout(time_limit) do
			until activities_wanted.include?(current_activity)
				sleep 0.5
			end
		end
	end
		
	def wait_for_activity_to_disappear(activity_wanted, time_limit = 30)
		Timeout.timeout(time_limit) do
			until current_activity != activity_wanted
				sleep 0.5
			end
		end
	end
end