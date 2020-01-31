Feature: Forgot Password

  Scenario: I want to reset my password
	Given I forgot my password
	Then I reset the password
	Then I Login with my changed password