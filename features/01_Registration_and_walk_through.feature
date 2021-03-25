Feature: Higuru Sign In, Registration and Walk Through

  @Feature: Sign In Feature
  @Urgency: High

  Scenario: As a User I want to Sign in On the Portal
	Given I am viewing the log in page
	When I Sign in with Invalid Credentials
	Then I Sign in with my own valid Credentials

  Scenario: I want to register On the Portal
	Given I am viewing the log in page
	When I enter an Invalid Email
	Then I select terms of use and privacy policy
	Then I enter a password less than six characters
	Then I enter a password longer than 6 characters and select agreement to terms


  Scenario: I want to test the sign up Verification link
	Given I am entering an incorrect OTP and Resending the OTP
	Then I enter the correct OTP
	#Then I create my profile

  Scenario: I want to login and take a walk through the Portal
	Given I am already signed in
	Then I click on Conversation Portal
	Then I click on Stats

  @Scenario:Resetting_forgotten_password
  Scenario: I want to reset my password
	Given I forgot my password
	Then I reset the password
	Then I Login with my changed password