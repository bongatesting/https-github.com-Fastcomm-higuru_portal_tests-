Feature: Conversation Expiry Slider

  Scenario: I want to adjust the conversation expiry slider
	Given I am on the Company Unit Settings page
	Then I Adjust Conversation Expiry Slider by One hour
	Then I initiate a Conversation
	Then I check if the conversation has been Closed after one hour


