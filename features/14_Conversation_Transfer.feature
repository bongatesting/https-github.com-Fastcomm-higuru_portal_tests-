Feature: Conversation Transfer
  Scenario: I want to transfer a conversation between Agents
	Given I am on the Login View
	Then Create Routing Tags
	Then Assign Routing tags to Teams
	Then Initiate a Conversation
	Then Transfer the conversation
	Then Check if the conversation transfer labels are correct
