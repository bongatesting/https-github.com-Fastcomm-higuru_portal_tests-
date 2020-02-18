Feature: Conversation Expiry Slider
  Scenario: I want to adjust the conversation expiry slider
	Given The Conversation Expiry Slider is Disabled
	Then I Adjust Conversation Expiry Slider by One hour
	Then I initiate a Conversation
	Then I check if the conversation has been Closed after one hour


