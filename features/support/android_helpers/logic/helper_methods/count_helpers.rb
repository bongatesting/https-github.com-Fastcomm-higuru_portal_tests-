module CountHelpers
	def add_media_attachments_counter(attachments_expected)
		attachments_count = find_element(:id, "lyt_attachments").find_elements(:class, "android.widget.RelativeLayout").count - 1
		if attachments_count == attachments_expected.to_i
			return true
		else
			raise "*** The Expected Attachments count was #{attachments_expected}, the total attachments was #{attachments_count} ***"
		end
	end
	
	def current_contact_in_contacts_selected_tab(contacts_expected)
		contacts_count = find_element(:id, "recyclerViewChips").find_elements(:id, "textViewContactName").count
		
		if contacts_count == contacts_expected.to_i
			return true 
		else
			raise "** Expected #{contacts_expected} contacts in the selected tab, got #{contacts_count} **"
		end
	end
end