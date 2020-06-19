Feature: Bot Feature

  @Feature: Add Bot Feature
  @Urgency: High

  Scenario: I want to add a Bot, initiate a chat and claim the bot chat
	Given I have no Bots added
	Then I Add the Bot
	Then I Activate the Bot
	Then I initiate a chat and claim the bot chat

  Scenario: I want to deactivate and delete a Bot
	Given The bot is active
	Then I deactivate the Bot
	Then I delete the Bot