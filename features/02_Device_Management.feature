Feature: HelloThing Device Management

	Scenario: As a User I want to check My Device settings
		Given I am already signed in
		When I go to my Device
		Then I edit my device alarm settings
		Then I change the Temp and Confirm it changed
		#TODO - Add my own valve device
