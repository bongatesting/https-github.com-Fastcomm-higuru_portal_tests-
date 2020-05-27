module AndroidHelpers
	def hide_native_android_soft_keyboard
		begin
			$app_driver.hide_keyboard
		rescue Selenium::WebDriver::Error::UnknownError
			puts "** Android Native Soft Keyboard Already hidden **"
		end		
	end
	
	def click_android_shutter_button
		Timeout.timeout(30) do
			until android_native_camera_shutter_button.find_arr.count < 0
			  android_native_camera_shutter_button.tap_element
			  sleep 1
			end
		end
	end
	
	def click_android_enter_key
		$driver.press_keycode(66)
		#Keeping the below just incase anything else breaks with the above method.
		# begin
		# 	AndroidKeyCode.new(66).enter_key
		# rescue Selenium::WebDriver::Error::StaleElementReferenceError
		# 	puts "android.support.test.uiautomator.StaleObjectException"
		# 	AndroidKeyCode.new(66).enter_key
		# end
	end
	
	def android_native_back_button
		AndroidKeyCode.new(4).back_key
	end

	def restart_android_app
		$app_driver.launch_app
		if current_activity != main_activity
			raise "App needs to be in a registered state for restart_android_app to work"
		end
	end

	def restart_latch_app
		$app_driver.launch_app
	end

	def import_contacts_list
		##TODO
		# Add contacts import through adb
	end
end