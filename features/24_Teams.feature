Feature: Teams Feature

  @TEST:teams_feature
  @SCENARIO:Adding_a_Team
  @URGENCY:Medium

  @Scenario:Adding_Team
  Scenario: I want to add a Team
	Given I have an account
	Then I add A Team

  @Scenario:Editing_the_team_description_and_name
  Scenario: I want to edit the Team description and Name
	Given I have an account
	Then I edit the Team description and Name

  @Scenario:Deleting_a_Team_with_a_Primary_routing_tag
  Scenario: I want to attempt deleting a Team with a Primary Routing Tag
	Given I have an account
	Then I attempt to delete the Team