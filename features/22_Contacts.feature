Feature: Contacts Feature

  @TEST:higuru_contacts
  @SCENARIO:Contacts
  @URGENCY:Medium

  @Scenario:Viewing_Empty_Contacts
  Scenario: I want to view an empty Contacts Tab
	Given I have no Contacts Added
	Then I view the empty contacts
	Then I fill in the Contact form, select all channels and dismiss the form

  @Scenario:Adding_contact
  Scenario: I want to Add a Contact
	Given I have an account
	Then I add and view the Contacts

  @Scenario:Viewing_Contacts
  Scenario: I want to view contacts
	Given I have various Registered and Unregistered Contacts
	Then I view contacts and their details