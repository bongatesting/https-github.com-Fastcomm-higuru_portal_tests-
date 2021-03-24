Feature: Higuru Fastcomm Web Widget Test

# This test is to be scheduled with an Agent before running

  @TEST:Higuru_Fastcomm_Web_widget_test
  @SCENARIO:Higuru_Fastcomm_Conversations
  @URGENCY:High

  @Scenario:Testing_fastcomm_web_widget
  Scenario: As a user I want to Test speaking to a Live agent
	Given I am viewing the Fastcomm website
	When I initiate chatting to a live agent
	Then I get feedback from the agent

  @Scenario:Testing_higuru_web_widget
  Scenario: As a user I want to Test the hi.guru web widget
	Given I am viewing the hi.guru website
	Then I click on the hi.guru WIDGET
	Then I get feedback from the Agent And Complete my chat with the bot