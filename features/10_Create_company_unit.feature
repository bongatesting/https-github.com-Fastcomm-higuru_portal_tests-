Feature: Create a company unit

  Scenario: As an Agent I want to create a company unit
	Given I am already signed in
	Then I create the company unit
	Then I confirm the Company unit has been created
