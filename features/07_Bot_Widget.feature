Feature: Bot Widget Feature

  Scenario: As a user I want to Test the hi.guru web widget
	Given I am viewing the hi.guru website
	Then I click on the WIDGET
	Then I Complete my chat with the bot
	When I re-initiate my Chat with the Bot
	Then I confirm the chat has been closed

	Scenario: As a user I want to Test the Fastcomm web widget
		Given I am viewing the Fastcomm website
		Then I click on the Fastcomm WIDGET
		Then I Complete my chat with the bot
		When I re-initiate my Chat with the Bot
		Then I confirm the chat has been closed