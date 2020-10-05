Feature: Company Unit Feature

  @TEST:Company_unit_feature
  @SCENARIO:Company_unit
  @URGENCY:Medium

  @Scenario:Creating_and_Deleting_second_company_unit
  Scenario: I want to create a second Company Unit and delete it
	Given I am logged in
	Then I go to the Company Unit settings and create a new Company Unit
	Then I switch back to the original Company Unit
	Then I delete the Company Unit