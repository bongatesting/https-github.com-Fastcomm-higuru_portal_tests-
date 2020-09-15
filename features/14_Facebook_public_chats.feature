Feature: Facebook public chats

  Scenario: Receive facebook public chat
	Given I go to the log in page
	Then I login to my account
	Then I create a facebook post
	Then receive the public chat
	Then I download the current transcript then resolve and download my chat
	Then I download the chat in the conversation history tab
	Then I reauthorise my facebook page