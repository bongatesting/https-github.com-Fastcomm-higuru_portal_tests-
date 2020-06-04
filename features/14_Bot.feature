Feature: Bot Feature

  @Feature: Add Bot Feature
  @Urgency: High

  Scenario: I want to add a Bot
	Given I have no Bots added
	Then I Add the Bot
	Then I Activate the Bot

  Scenario: I want to test the Bot and claim the Bot chat
	Given There is a chat on the Bot tab
	Then I claim the Bot chat and respond

  Scenario: I want to deactivate and delete a Bot
	Given The bot is active
	Then I deactivate the Bot
	Then I delete the Bot