Feature: Add Channels Feature

  @TEST:Channels
  @SCENARIO:Add_channels
  @URGENCY:Medium

  @Scenario:Adding_channels
  Scenario: I want to Add channels
	Given I am logged in
	Then I add WebMessage
	Then I add Twitter
	Then I add Facebook

  @Scenario:Web_message_settings
  Scenario: I want to adjust the web message settings
	Given I have the Webmessage channel
	Then I adjust the settings
	Then I test if the settings have been applied