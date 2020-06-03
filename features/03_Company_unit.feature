Feature: Company Unit Feature

  @Feature: Company Unit Feature
  @Urgency: High

  Scenario: As an Agent I want to navigate to both Company Units
	Given I have more than one Company Unit linked to the Account
	Then Go to the Conversation View
	Then Switch to company unit Two and back