Feature: Agent Availability

  @TEST:Agent_availability
  @SCENARIO:Agent_availability
  @URGENCY:High

  @Scenario:Switching_agent_availability
  Scenario: I want to switch the Agent's availability.
	Given The Agent is not available
	Then I make a conversation and check if it comes through
	Then I switch back to available and check if the conversation comes through

  Scenario: User Inactivity
	Given I am logged in
	Then I set the time