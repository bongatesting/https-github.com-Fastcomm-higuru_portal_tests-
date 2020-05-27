Feature: Agent Availability
  Scenario: I want to switch the Agent's availability.
	Given The Agent is not available
	Then I make a conversation and check if it comes through
	Then I switch back to available and check if the conversation comes through
