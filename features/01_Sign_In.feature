Feature: HelloThing Sign In

	Scenario: As a User I want to Sign in On the Portal
		Given I am on the Sign In Page
		When I Sign in with Invalid Credentials
		Then I Sign in with Demo Credentials
		#TODO - Bug Found - Unable to Logout of own Account - AL-224
		Then I Sign out
		Then I Sign in with my own valid Credentials
