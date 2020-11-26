Feature: Add and Delete an Agent

  @TEST:Add_and_Delete_Agent
  @SCENARIO:Add_and_Remove_Agent
  @URGENCY:Medium

  @Scenario:Adding_and_Deleting_Agent
  Scenario: I want to delete an Agent from a company Unit
	Given I am logged in
	Then I Add the new Agent
	Then I Remove the Agent