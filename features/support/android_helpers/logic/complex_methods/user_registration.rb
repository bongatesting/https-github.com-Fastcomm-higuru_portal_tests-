module UserRegistration
	def account_number(user_number)
		if ENV['HOST'] == "rc"
	  		@registration_number = RcRegistrationNumber.get_number ## Get number from DB
	  		RcRegistrationNumber.set_number(@registration_number) ## Setup new number / Add number to DB
		else
			@registration_number = QaRegistrationNumber.get_number ## Get number from DB
			QaRegistrationNumber.set_number(@registration_number) ## Setup new number / Add number to DB
		end

		number_verification_input_number_field.send_text(@registration_number)
	end
end