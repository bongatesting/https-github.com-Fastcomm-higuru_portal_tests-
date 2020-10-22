Feature: Bot Widget Feature

  @TEST:Bot_widget
  @SCENARIO:higuru_Bot_widget
  @URGENCY:High

  @Scenario:Testing_higuru_web_widget
  Scenario: As a user I want to Test the hi.guru web widget
	Given I am viewing the hi.guru website
	Then I click on the hi.guru WIDGET
	Then I get feedback from the Agent And Complete my chat with the bot

  Scenario: As a user I want to Test the Fastcomm web widget
	Given I am viewing the Fastcomm website
	Then I click on the Fastcomm WIDGET and test the responses
	Then I re-initiate my Chat with the Fastcomm Sites Bot

  Scenario: As a user I want to simulate speaking to a Live agent
	Given I am viewing the Fastcomm website
	When I initiate chatting to a live agent
	Then I reply as an Agent and resolve the chat

  Scenario: As a user I want to Test the Bots accuracy and claim a bot chat as an Agent
	Given I am viewing the Fastcomm website
	Then I click on the WIDGET and send messages instead of clicking
	Then I claim and close the chat on Fastcomm Portal Channel