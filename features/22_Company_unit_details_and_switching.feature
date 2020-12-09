Feature: Company_unit_details_and_switching Feature

  @TEST:Company_unit_details_and_switching
  @SCENARIO:Company_unit_details_and_switching
  @URGENCY:High

  @Scenario:Editing_company_unit_details
    Scenario: I want to edit company unit details
	Given I have upgraded my Account
	Then I edit the Company Unit details

  @Scenario:Editing_company_unit_details
    Scenario:
	Given I have upgraded my Account
	Then I add a Company Unit