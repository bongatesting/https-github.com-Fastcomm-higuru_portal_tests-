Feature: Contact_info Feature

  @TEST:contact_info
  @SCENARIO:Contact
  @URGENCY:Medium

  @Scenario:Viewing_contact_info_free_plan
  Scenario: I want to test my Contact info feature through a Web Chat on a Free Plan
	Given I have webmessage channel added on a Free Plan
	Then I apply the webmessage channel settings
	Then I start a Webmessage chat
	Then I view the Contact info features

  @Scenario:Viewing_contact_info_Enterprise_plan
  Scenario: I want to test my Contact info feature through a Web Chat on an Enterprise Plan
	Given I am logged in
	Then I apply the settings
	Then I start a Webmessage channel chat
	Then I view the Contact information