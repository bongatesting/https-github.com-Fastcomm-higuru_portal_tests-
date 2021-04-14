Feature: Account Settings Feature

  @TEST:Account_settings
  @SCENARIO:Enhance_security
  @URGENCY:High

  @Scenario:Updating_password
  Scenario: I want to enhance Security on my Account
	Given I am logged in
	Then I update my Password and Logout
	Then I log in with the updated password

  @Scenario:Company_unit_info_Toggle_settings
  Scenario: I want to test all the toggles in the Company unit info
	Given I am the owner
	Then I switch on and off all the toggles