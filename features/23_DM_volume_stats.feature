Feature: DM Volume Feature

  @TEST:higuru_DM_Volume__stats
  @SCENARIO:DM_Volume_Stats
  @URGENCY:Medium

  @Scenario:Viewing_DM_Volume_stats
  Scenario: I want to view DM Volume Stats
	Given I am logged in
	Then check the DM volume and start a Facebook chat
	Then I check the DM count after the message is sent and delivered