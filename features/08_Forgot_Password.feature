Feature: Forgot Password

  @TEST:Forgotten_password
  @SCENARIO:Password
  @URGENCY:High

  @Scenario:Resetting_forgotten_password
  Scenario: I want to reset my password
	Given I forgot my password
	Then I reset the password
	Then I Login with my changed password