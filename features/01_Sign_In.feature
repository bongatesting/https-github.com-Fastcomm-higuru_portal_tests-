Feature: Higuru Sign In

	Scenario: As a User I want to Sign in On the Portal
		Given I am on the HiGuru Sign In Page
	    When I Sign in with Invalid Credentials
	  	Then I Sign in with my own valid Credentials
