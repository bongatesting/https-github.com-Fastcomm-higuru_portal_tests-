Feature: Company Unit Feature

  @Feature: Company Unit Feature
  @Urgency: High

  Scenario: HG-2082 - After successfully creating a company unit you get logged out
	Given I have a Company Unit
	Then I go to the Company Unit settings and create a second Company Unit