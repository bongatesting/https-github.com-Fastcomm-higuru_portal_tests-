module States

	def registered_user_state

		## Continue Window ###################################
		wait_for(registration_welcome_app_logo, 10)
		hide_native_android_soft_keyboard
		registration_welcome_continue_button.tap_element
		######################################################
		
		## Number Verification Window ########################
		account_number("0620625841")
		hide_native_android_soft_keyboard
    	number_verification_input_number_continue_button.tap_element
		######################################################

		## Registration Pop Up Window ########################
  		wait_for(number_invalid_alert)
  		registration_welcome_continue_button1.tap_element
		######################################################

		## Registration Pop Up Window ########################
  		wait_for(verfication_code_alert)
  		registration_welcome_continue_button1.tap_element
  		# registration_alert_continue_button.tap_element	
		######################################################		
		
		## OTP Window ########################################	
	  	otp_input_field.send_text("6319")
	  	# wait_for_element_to_disappear(registration_please_wait_title)	
		######################################################

		if import_chats_content_skip_button.find_arr.count > 0
			import_chats_content_skip_button.tap_element
		end
		
		## Onboarding Window #################################
		wait_for(onboarding_introduction_message)
		######################################################
	end
	

	def register_valid_locked_channel_user
		## Continue Window ###################################
		wait_for(registration_welcome_app_logo, 10)
		hide_native_android_soft_keyboard

		registration_welcome_continue_button.tap_element
		######################################################
		
		## Number Verification Window ########################
		## select country ####################	
		number_verification_input_number_nation_flag.tap_element
	
	  	wait_for(number_verification_input_number_nation_code_list_item)	
		scroll_until_text_found(object: number_verification_input_number_nation_code_list_item, expected_text: 'Austria',direction: "down")
		tap_text_in_object_arr(number_verification_input_number_nation_code_list_item, 'Austria')
		######################################
		wait_for(number_verification_input_number_field)
	  	number_verification_input_number_field.send_text('3167373304')

		hide_native_android_soft_keyboard

	  	includes_text(number_verification_input_number_field, "3167373304")
    
  		number_verification_input_number_continue_button.tap_element
		######################################################

		## Registration Pop Up Window ########################
		registration_welcome_continue_button1.tap_element
  		# registration_alert_continue_button.tap_element
		######################################################		
		
		## OTP Window ########################################
	    wait_for(otp_input_field)
	  	otp_input_field.send_text("6319")
	  	wait_for_element_to_disappear(registration_please_wait_title)	
		######################################################
		
		## Skip onboarding ###################################
		import_chats_content_skip_button.tap_element
		######################################################
		
		## Onboarding Window #################################
	  	wait_for(onboarding_introduction_message)
		######################################################		
	end

	def onboarding_setted_state
		if import_chats_content_skip_button.find_arr.count > 0
			import_chats_content_skip_button.tap_element
		end
				
		## Onboarding Window #################################
	  	@display_name = generate_random_string("Display Name")
		set_unique_display_name
		onboarding_display_name_field.send_text(@display_name)
		includes_text(onboarding_display_name_field, @display_name)
		onboarding_email_field.send_text("fake@email.com")
		includes_text(onboarding_email_field, "fake@email.com")
		onboarding_continue_button.tap_element
		sleep 2
		## Main Window #######################################
    	MainHeaderPage.should_see MainHeaderPage::OPEN_PROFILE_MENU_BUTTON
		######################################################
	end
end