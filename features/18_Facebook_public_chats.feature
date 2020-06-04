Feature: Facebook public chats

  Scenario: Receive facebook public chats
	Given I go to the log in page
	Then I login to my account
	Then I create a facebook post
	Then receive the public chat
	Then I reauthorise my facebook page

