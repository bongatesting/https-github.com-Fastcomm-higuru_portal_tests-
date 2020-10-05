Feature: higuru inviting an Agent

  @TEST:Inviting_agent
  @SCENARIO:higuru_Agents
  @URGENCY:Medium

  @Scenario:Inviting_Agent
  Scenario: As a Owner I want to invite an Agent to my account
	Given I go to the log in page and login
	Then I add the Agent
	Then I delete the Agent