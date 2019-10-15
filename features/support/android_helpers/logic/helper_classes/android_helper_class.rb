class AndroidKeyCode
	def initialize(key_code = nil)
		@key_code = key_code
		no_wait
	end
	
	def enter_key
		press_keycode(66)
	end
	
	def back_key
		press_keycode(4)
	end
	
	def check_for_preview_done_button
		if find_elements(:id, "com.android.camera2:id/done_button").count > 0
			return AppiumMethod.new("com.android.camera2:id/done_button", :id)
		elsif finds_exact("OK").count 
			return AppiumMethod.new("OK", :text)
		else 
			raise "** Could not locate a preview done button **"
		end
	end
end