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
	Then I Sign up with a valid Email
	Then I sign into outlook and fetch the valid OTP
	Then I create my profile

  Scenario: I want to login and take a walk through the Portal
	Given I am already signed in
	Then I click on Stats

  @Scenario:Resetting_forgotten_password
  Scenario: I want to reset my password
	Given I forgot my password
	Then I reset the password
	Then I Login with my changed password