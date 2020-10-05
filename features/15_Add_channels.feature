Feature: Add Channels Feature

  @TEST:Channels
  @SCENARIO:Add_channels
  @URGENCY:Medium

  @Scenario:Adding_channels
  Scenario: I want to Add channels
	Given I am logged in
	Then I add WebMessage
	Then I add Twitter
	Then I add Facebook