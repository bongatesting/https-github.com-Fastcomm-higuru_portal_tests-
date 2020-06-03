Feature: Bot Feature

  @Feature: Add Bot Feature
  @Urgency: High

  Scenario: I want to add a Bot
	Given I have no Bots added
	Then I Add the Bot
	Then I Activate the Bot
	Then I activate first responder
	Then I Test the Bot

	Scenario: I want to delete a Bot
	  Given I have bots added
	  Then I remove and delete the Bot

    Scenario: I want to deactivate a Bot
		Given The bot is not active
		Then I deactivate the Bot

    Scenario: I want to claim a Bot chat
	  Given There is a chat on the Bot tab
	  Then I claim the Bot chat and respond