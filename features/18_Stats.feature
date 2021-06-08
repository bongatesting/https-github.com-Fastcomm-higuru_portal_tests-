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

  Scenario: I want to see if DM Volume count will increase through a Bot chat
	Given I have added a Bot
	Then Start a chat and check DM Volume count
	Then I remove the Bot

  Scenario: I want to ensure that the percentage for the Resolved Conversation increases after resolving a chat.
	Given I am logged in
	Then I check the number of resolved conversation before I start a conversation
	Then I resolve the chat and check if the Resolved conversations percentage has increased