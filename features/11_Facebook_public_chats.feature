Feature: Facebook public chats

  @TEST:Public_chats
  @SCENARIO:Facebook_public_chats
  @URGENCY:High

  @Scenario:Testing_facebook_public_chats
  Scenario: Receive facebook public chat
	Given I go to the log in page
	Then I login to my account and add a facebook page
	Then I create a facebook post
	Then receive the public chat
	Then I download the current transcript then resolve and download my chat
	Then I download the chat in the conversation history tab
	Then I reauthorise my facebook page