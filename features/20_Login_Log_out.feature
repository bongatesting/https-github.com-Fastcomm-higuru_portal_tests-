Feature: Login_logout Feature

  @TEST:Login_logout
  @SCENARIO:Login_logout
  @URGENCY:High

  @Scenario:Logging_in_and_logging_out
	Scenario: I want to Select Sign Up, log in and log out
	Given I have already signed up
	Then I complete the test

  @Scenario:Forgotten_Password
	Scenario: I want to reset my password
	Given I have forgotten my Password
	Then I complete the password reset process

  @Scenario:Logging_in_with_single_company_unit
    Scenario: As an Agent I want to Log In with single company unit
	Given I am an Agent
	Then I log in and Log out

  @Scenario:Logging_in_with_multiple_company_units
     Scenario: As an Owner I want to Log in with Multiple company units
	 Given I am the owner
	 Then I log in and log off

  @Scenario:Logging_in_with_multiple_company_accounts_and_multiple_company_units
    Scenario: I want to login with multiple company accounts and multiple company units
	Given I am the owner
	Then select the company account and the company unit

  @Scenario:Logging_in_with_a_deleted_user
    Scenario: I want to login with a deleted user
	Given I am logging in with a deleted Agent
	Then I try logging in with a deleted user