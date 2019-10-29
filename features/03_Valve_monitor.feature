Feature: HelloThing Valve Monitor

	Scenario: As a User I want to check Valve Monitor
		Given I am already signed in
		When I go to Valve Monitor
		Then I set my Temperature and confirm it changed