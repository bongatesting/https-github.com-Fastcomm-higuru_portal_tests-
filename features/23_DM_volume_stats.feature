Feature: DM Volume Feature

  @TEST:higuru_DM_Volume__stats
  @SCENARIO:DM_Volume_Stats
  @URGENCY:Medium

  @Scenario:Viewing_DM_Volume_stats
  Scenario: I want to view DM Volume Stats through a Facebook chat
	Given I am on Free Plan
	Then I add a Facebook page
	Then I check the DM volume before starting a Facebook chat
	Then I check the DM count after the message is sent and delivered
	Then I resolve the chat and remove the Facebook page

  @Scenario:Viewing_DM_Volume_stats
  Scenario: I want to view DM Volume Stats through a Twitter chat
	Given I have an account
	Then I add a Twitter channel
	Then I start a Twitter chat
	Then I check the Twitter DM count
	Then I resolve the chat and remove the Twitter page

  @Scenario:Viewing_DM_Volume_stats
  Scenario: I want to view DM Volume Stats through a Web Message chat
	Given I have a bot assigned
	Then I check the DM count and start a Webmessage chat
	Then I check Webmessage DM count and remove the Bot