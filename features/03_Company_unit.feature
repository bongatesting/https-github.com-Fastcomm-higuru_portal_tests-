Feature: Company Unit Feature

  @Feature: Company Unit Feature
  @Urgency: High

  Scenario: I want to create a second Company Unit
	Given I have one Company Unit
	Then I go to the Company Unit settings and create a new Company Unit
	Then I switch back to the original Company Unit