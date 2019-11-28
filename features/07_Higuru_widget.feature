Feature: hi.guru Widget Test

  Scenario: As a user I want to use the web widget
	Given I am viewing the hi.guru website
	Then I click on the WIDGET
	Then I Complete my chat with the bot
	When I re-initiate my Chat with the Bot
	Then I confirm the chat has been closed