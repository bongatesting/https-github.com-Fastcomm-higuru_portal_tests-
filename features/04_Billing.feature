Feature: Billing Information

  @TEST:Billing
  @SCENARIO:Viewing_billing_information
  @URGENCY:Medium

  @Scenario:Viewing_billing_information
  Scenario: I want to view Billing information
	Given I have an account
	Then I go to the billing page and navigate through the tabs

  @Scenario:Downgrading_From_Standard_plan_to_Free_Plan
  Scenario: I want to Downgrade my Account from Standard Plan to Free Plan
	Given I have an account
	Then I downgrade the Account