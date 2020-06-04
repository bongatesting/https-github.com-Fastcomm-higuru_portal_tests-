module RescueHelpers
	def rescue_only(object, error) ## Only does a rescue
		begin
			object
		rescue error => e
			puts e
		end
	end

	def rescue_repeat_for(object, error) ## Repeat object after rescue
		begin
			object
		rescue error => e
			puts e
			object
		end
	end

	def rescue_loop_for(object, error, condition, time_limit = 30) ## Performs a looped recue for a explicit time limit
		Timeout.timeout(time_limit) do
			until condition ## Loops until condition is met/true
				begin
					object
				rescue error => e
					puts e
					object
				end
			end
		end
	end
	
	def refreshing_stale_object(object:, action:, retry_attempts:)
		pending ## TODO Have to refresh Selenium object instance
		current_attempt = 0
		
		if object.is_a? Array
			until current_attempt == retry_attempts
				begin
					return object[action]
				rescue Selenium::WebDriver::Error::StaleElementReferenceError
					return object[action]
				end
				current_attempt += 1
			end
		else
			until current_attempt == retry_attempts
				begin
					return object.public_send(action)
				rescue Selenium::WebDriver::Error::StaleElementReferenceError
					puts "StaleElementReferenceError"
					next
				end
				current_attempt += 1
			end
		end

		
		if current_attempt == retry_attempts
			raise "** Stale object refreshed #{retry_attempts} times, could not find object in DOM **"
		end
	end
end