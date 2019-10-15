module Checks
	def check_for_android_native_chooser
		if current_activity == resolver_activty

			wait_for(android_native_chooser_chrome_option)
			android_native_chooser_chrome_option.tap_element
			
			wait_for(android_native_always_button)
			android_native_always_button.tap_element
			
			sleep 10
			
			check_for_android_native_chrome_policies
		end
	end
	
	def check_for_android_native_chrome_policies
		if current_activity == chrome_ploicies_activiy
			
			wait_for(chrome_policies_accept_terms_button)
			chrome_policies_accept_terms_button.tap_element
			
			sleep 5
			
			check_for_android_native_sign_in
		end
	end
	
	def check_for_android_native_sign_in
		if chrome_sign_in_text.find_arr.count > 0
			Timeout.timeout(30) do
				if current_activity != chrome_browser_activity
					wait_for(chrome_sign_in_no_thanks_button)
					chrome_sign_in_no_thanks_button.tap_element
					wait_for_element_to_disappear(chrome_sign_in_no_thanks_button)
				end
			end
		end
	end
	
	def check_for_android_native_camera_location_alert
		sleep 5
		
		if android_native_camera_location_alert_text.find_arr.count > 0
			wait_for(android_native_camera_location_alert_allow_button)
			android_native_camera_location_alert_allow_button.tap_element
			wait_for_element_to_disappear(android_native_camera_location_alert_allow_button)
		end
	end
	
	def check_for_android_native_camera_remember_photo_location_alert
		sleep 5
		
		if remember_photo_locations_header_text.find_arr.count > 0
			wait_for(remember_photo_locations_header_next_button)
			remember_photo_locations_header_next_button.tap_element
			wait_for_element_to_disappear(remember_photo_locations_header_next_button)
		end
		
		$app_driver.launch_app 
		
		wait_for(onboarding_set_profile_picture_button)
		onboarding_set_profile_picture_button.tap_element
		
		wait_for(onboarding_select_option_text)
		wait_for(onboarding_select_option_camera)
		onboarding_select_option_camera.tap_element
		wait_for(android_native_camera_shutter_button)
		# if find_elements(android_native_camera_shutter_button).count > 0 then return true else raise "** Shutter button not found **" end
	end
	
	def is_selected(object)
		if object.find_el.attribute("selected") 
			return true
		else
			return false
		end
	end	
		
	def is_checked(object)
		if object.find_el.attribute("checked") == "true"
			return true
		else
			return false
		end
	end	
			
	def is_not_checked(object)
		if object.find_el.attribute("checked") == "true"
			return false
		else
			return true
		end
	end	

	def is_visible(object)
		if object.find_arr.count > 0
			return true
		end
		return false
	end
	
	def check_for_contacts
		start_activity app_package: 'com.android.contacts', app_activity: android_native_contacts_activity
		wait_for_activity(android_native_contacts_activity)
		wait_for(android_native_contacts_header_text)
		
		if android_native_contacts_empty_logo.find_arr.count > 0

			wait_for(android_native_contacts_add_account_button)
			android_native_contacts_add_account_button.tap_element
			
			wait_for(android_native_add_an_account_google_button)
			android_native_add_an_account_google_button.tap_element

			wait_for(android_native_checking_info_description)
			wait_for_element_to_disappear(android_native_checking_info_description)

			wait_for(android_native_add_your_account_email_or_phone_field)
			android_native_add_your_account_email_or_phone_field.send_text("linkappautomation@gmail.com")
			
			get_source.include?("linkappautomation@gmail.com")
			
			android_native_add_your_account_next_button.tap_element
			
			wait_for(android_native_account_password_field)
			android_native_account_password_field.send_text("testing123")

			wait_for(android_native_account_password_next_button)
			android_native_account_password_next_button.tap_element
			
			wait_for(android_native_policies_accept_button)
			android_native_policies_accept_button.tap_element
			
			begin
				start_activity app_package: 'com.android.contacts', app_activity: android_native_contacts_activity
			rescue Selenium::WebDriver::Error::UnknownError
				puts "Original error: 'com.android.contacts.activities.PeopleActivity' never started"
				start_activity app_package: 'com.android.contacts', app_activity: android_native_contacts_activity
			end
			
			wait_for_activity(android_native_contacts_activity)
			wait_for(android_native_contacts_header_text)
		end
		
		launch_app
	end
	
	def check_if_header_is_visible(object_in_header)
		if object_in_header.find_arr.count < 0
			Timeout.timeout(30) do
				until object_in_header.find_arr.count > 0
					scroll_down_from_middle_screen
				end
			end
		end
	end
	
	def check_if_enable_data_saver_window_appears
		if chrome_data_saver_logo.find_arr.count > 0
			chrome_data_saver_no_thanks_button.tap_element
			wait_for_element_to_disappear(chrome_data_saver_logo)
		end
	end
	
	def check_if_sync_window_is_active
		sleep 0.5
		if current_activity == contact_sync_activity 
			wait_for_activity(contact_sync_activity)
			wait_for_activity_to_disappear(contact_sync_activity, 300)
		end
	end
	
	def check_if_tutorial_is_displayed
		sleep 2
		
		while tutorial_logo.find_arr.count > 0
			tutorial_button.tap_element
			sleep 1
		end
	end
	
	def accept_location_permissions_if_any
		sleep 2
		
		until find_elements(:id, "com.google.android.gms:id/message").count <= 0
			alert_accept
		end
	end
	
	def check_if_blue_tutorial_is_active
		sleep 1
		
		if general_channel_blue_tutorial_screen_ok_button.find_arr.count > 0
			general_channel_blue_tutorial_screen_ok_button.tap_element
			
			wait_for_element_to_disappear(general_channel_blue_tutorial_screen_ok_button)
		end
	end
	
	def check_if_video_playback_need_exturn_app
		sleep 1
		
		if current_activity == resolver_activty
			
			wait_for(android_native_chooser_video_player_option)
			android_native_chooser_video_player_option.tap_element
			
			wait_for(android_native_always_button)
			android_native_always_button.tap_element		
			
			wait_for_activity(android_native_video_playback_activity)
		end
	end

	def check_display_name_validation(display_name)
		if display_name.nil?
			@display_name = get_unique_display_name
		end
	end
end