Feature: Add and Delete an Agent

  @TEST:Add_and_Delete_Agent
  @SCENARIO:Add_and_Remove_Agent
  @URGENCY:Medium

  @Scenario:Adding_and_Deleting_Agent
  Scenario: I want to delete an Agent from a company Unit
	Given I want to add an Agent and upgrade him to CU Manager
	Then I Add the new Agent
	Then I downgrade the Company Unit Manager to Agent and Remove it