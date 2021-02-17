Feature: Conversations Feature

  @TEST:higuru_conversations
  @SCENARIO:Conversations
  @URGENCY:High

  @Scenario:Viewing_conversations
  Scenario: As a User I want to view my conversations
	Given I am signing in
	Then I start a new conversation
	Then I check if the conversation came through
	Then I resolve the conversation

  Scenario: As an Agent I want to view the conversation History
	Given I have conversations
	Then I start a conversation
	Then I click on conversation history

  Scenario: I want to adjust the conversation expiry slider
	Given I am on the Company Unit Settings page
	Then I Adjust Conversation Expiry Slider by One hour
	Then I initiate a conversation
	Then I check if the conversation has been Closed after one hour

  Scenario: I want to transfer a conversation between Agents
	Given I am on the Login View and I Create a Second Agent
	Then Create Routing Tags
	Then Create the second Team and Assign Routing tags to both Teams
	Then Initiate a Conversation
	Then Transfer the conversation
	Then Check if the conversation transfer labels are correct
	Then I Delete Team Two and the Second Agent
	Then I Remove Routing Tags

  Scenario: I want to add conversation topics
	Given I am logged in
	Then I Add Conversation Topics Tags
	Then I start a conversation and Tag it

  Scenario: I want to set the Concurrent Conversation Limit
	Given I am logged in
	Then I set the Concurrent Conversation Limit and Test it