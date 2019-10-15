module CheckHelpers
	def check_element_should_not_exists(object, time_limit = 30)
		Timeout.timeout(time_limit) do 
			if object.find_arr.count == 0
				return true
			else
				raise "** #{object} does exist in #{current_activity} **"
			end
		end
	end
end