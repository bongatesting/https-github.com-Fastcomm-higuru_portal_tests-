module Checkbox
	def select_contact_checkbox(contact_name)
	  if is_visible(eval(ContactSelectPage::SEARCH_BUTTON))
	    ContactSelectPage.tap_on ContactSelectPage::SEARCH_BUTTON
	  end

	  ContactSelectPage.search_for(contact_name)
	  ContactSelectPage.should_see_contact(contact_name)
	  ContactSelectPage.select_checkbox_for(contact_name)
	end
end