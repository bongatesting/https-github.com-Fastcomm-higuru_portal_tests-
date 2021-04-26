Feature: Add Channels Feature

  @TEST:Channels
  @SCENARIO:Add_channels
  @URGENCY:Medium

  @Scenario:Adding_channels
  Scenario: I want to Add channels
	Given I have no channels added
	Then I add WebMessage
	Then I add Twitter
	Then I add Facebook

  @Scenario:Web_message_settings
  Scenario: I want to adjust the web message settings
	Given I have the Webmessage channel
	Then I adjust the settings
	Then I test if the settings have been applied

  @Scenario:Customizing_web_widget
  Scenario: I want to customize my web widget appearance
	Given I have the Webmessage channel
	Then I customize the widget and check if the settings apply

  @Scenario:Web_Widget_appearance
  Scenario: I want to position the web widget and Add the Widget Button preview text
	Given I have the Webmessage channel
	Then I Position the web widget and add preview text

  @Scenario:Web_Widget_Button_icon_selection
  Scenario: I want to modify the hi.guru webMessage button appearance
	Given I have the Webmessage channel
	Then I modify the WebMessage button appearance