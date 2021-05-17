Feature: Stats Feature

  @TEST:higuru_stats
  @SCENARIO:Stats
  @URGENCY:High

  @Scenario:Viewing_stats
  Scenario: I want to view Stats and view the Agent's Activity
	Given I am logged in
	Then I navigate to the stats Tab and View the Statistics
	Then I choose a Custom Date and Export to PDF
	Then Navigate to the Agent Activity and View the Available stats

  Scenario: I want to view the Total DM message volume visualisation
	Given I am logged in
	Then I go to the Stats Conversation DM Volume