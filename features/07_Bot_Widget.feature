Feature: Bot Widget Feature

  Scenario: As a user I want to Test the hi.guru web widget
	Given I am viewing the hi.guru website
	Then I click on the WIDGET
	Then I Complete my chat with the bot
	When I re-initiate my Chat with the Bot
	Then I confirm the chat has been closed on HiGuru Portal Channel

  Scenario: As a user I want to Test the Fastcomm web widget
	Given I am viewing the Fastcomm website
	Then I click on the Fastcomm WIDGET and test the responses
	When I re-initiate my Chat with the Fastcomm Sites Bot

  Scenario: As a user I want to Test speaking to a Live agent
	Given I am viewing the Fastcomm website
	Then I initiate chatting to a live agent
	Then I reply as an Agent and resolve the chat

  Scenario: As a user I want to Test the Bots accuracy and claim a bot a chat as an Agent
	Given I am viewing the Fastcomm website
	Then I click on the WIDGET and send messages instead of clicking
	Then I claim and close the chat on Fastcomm Portal Channel

	#This test is to be scheduled with an Agent before running
  Scenario: As a user I want to Test speaking to a Live agent
	Given I am viewing the Fastcomm website
	Then I initiate chatting to a live agent
	Then I get feedback from the agent