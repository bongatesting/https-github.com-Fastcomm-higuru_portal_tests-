Feature: Public chats

  @TEST:Public_chats
  @SCENARIO:Download_public_chats
  @URGENCY:Medium

  @Scenario:Downloading_and_resolving_public_chats
	Scenario:I want to download and resolve a public chat
	Given I have a public chat
	Then I download and resolve the chat