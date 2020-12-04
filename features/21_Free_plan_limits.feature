Feature: Free_plan Limits Feature

  @TEST:Free_plan_limits
  @SCENARIO:Free_plan
  @URGENCY:Mid

  @Scenario:Viewing_the_free_plan_limits
	Scenario: I want to add a company unit
	Given I am on Free Plan
	Then I attempt adding a company unit

  @Scenario:Routing_Tags_Limit
    Scenario: I want to add routing tags
	Given I am on Free Plan
	Then I attempt adding the routing tags

  @Scenario:Conversation_Topics_Limit
    Scenario: I want to add Conversation Topic tags
	Given I am on Free Plan
	Then I attempt adding conversation topic tags

  @Scenario:Adding_Twitter_Limit
	Scenario: I want to add a Twitter channel
    Given I am on Free Plan
	Then I attempt adding a Twitter account

  @Scenario:Adding_Text_SMS_limit
    Scenario: I want to add a Text SMS Limit
	Given I am on Free Plan
	Then I attempt Adding Text Limit

  @Scenario:Adding_WhatsApp_for_Business_Limit
    Scenario: I want to add WhatsApp for Business Limit
	Given I am on Free Plan
	Then I attempt adding Whatsapp for Business

  @Scenario:Web_Message_Location_Attachment_Limit
    Scenario: I want to make sure that the location icon is not present
	Given I am on Free Plan
	Then I launch the web widget

  @Scenario:People_limit
    Scenario: I want to check if I can add more people on a Free Plan account
	Given I am on Free Plan
	Then I attempt adding the person

  @Scenario:Teams_limit
    Scenario: I want to check if I can add more Teams on a free Free Plan account
	Given I am on Free Plan
	Then I attempt adding another Team

  @Scenario:Export_Stats_Limit
    Scenario: I want to Export Stats on a Free Plan account
	Given I am on Free Plan
	Then I attempt exporting stats

  @Scenario:Other_Upgrade_buttons
  Scenario: I want to check other upgrade buttons on a Free Plan account
	Given I am on Free Plan
	Then I check out other upgrade buttons