module Finds
	def find_name_in_selected_contacts_header(expected_name)
		if search_selected_contacts_names(expected_name) != true 
			raise "** Contact not visible in the Selected Contacts tab **"
		end	
	end
	
	def search_selected_contacts_names(expected_name)
		contacts_in_tab = find_element(:id, "recyclerViewChips").find_elements(:id, "textViewContactName")
		contacts_in_tab.each do |name|
			puts name.text
			if name.text == expected_name
				return true
			else 
				next
			end
		end
	end
	
	def find_group_notification(object, expected_notification)
		Timeout.timeout(30) do
			until group_notification.find_arr.count > 0
				sleep 1
			end
		end
		
		if search_group_notifications(object, expected_notification) != true
			raise "** Group notification not visible **"
		end
	end
	
	def search_group_notifications(object, expected_notification)		
		find_text_in_object_arr(object, expected_notification)
		
		object.find_arr.each do |current_notification|
			if current_notification.text == expected_notification
				return true 
			else
				next
			end
		end
	end
		
	def find_group_message(object, expected_message)
		Timeout.timeout(30) do
			until group_chat_message.find_arr.count > 0
				sleep 1
			end
		end
		
		if search_group_messages(object, expected_message) != true
			raise "** Group Message not visible **"
		end
	end
	
	def search_group_messages(object, expected_message)		
		object.find_arr.each do |current_message|
			if current_message.text == expected_message
				return true 
			else
				next
			end
		end
	end
	
	def find_participant_name(participant_name)
		scroll_to_exact(participant_name)
	end
	
	def tap_participant(participant_name)
		scroll_to_exact(participant_name)
		Timeout.timeout(30) do
			until group_info_options_view_profile.find_arr.count > 0
				find_exact(participant_name).click
				sleep 1
			end
		end
	end
end
