Feature: Higuru Fastcomm Web Widget Test

# This test is to be scheduled with an Agent before running

  @TEST:Higuru_Fastcomm_Web_widget_test
  @SCENARIO:Higuru_Conversations
  @URGENCY:High

  @Scenario:Higuru_Chatting_to_a_live_agent
  Scenario: As a user I want to Test speaking to a Live agent
	Given I am viewing the Fastcomm website
	When I initiate chatting to a live agent
	Then I get feedback from the agent