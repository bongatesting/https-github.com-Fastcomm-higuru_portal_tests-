Feature: Account Settings Feature

  @TEST:Account_settings
  @SCENARIO:Enhance_security
  @URGENCY:High

  @Scenario:Updating_password
  Scenario: I want to enhance Security on my Account
	Given I am logged in
	Then I update my Password and Logout
	Then I log in with the updated password