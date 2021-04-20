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

  @Scenario:Owner_Logging_in_with_single_company_unit
    Scenario: As an Owner I want to Log In with single company unit
	Given I am the Owner and I Input a wrong email address
	Then I Input a Valid email and Incorrect password
	Then I log in and Log out

  @Scenario:Owner_Logging_in_with_multiple_company_units
     Scenario: As an Owner I want to Log in with Multiple company units
	 Given I am the owner
	 Then I log in and log off

  @Scenario:Owner_Logging_in_with_multiple_company_accounts_and_multiple_company_units
    Scenario: As an Owner I want to login with multiple company accounts and multiple company units
	Given I am the owner
	Then select the company account and the company unit

  @Scenario:Logging_in_with_a_deleted_user
    Scenario: I want to login with a deleted user
	Given I am logging in with a deleted Agent
	Then I try logging in with a deleted user

  @Scenario:Select_to_sign_up_and_to_log_in
    Scenario: I want to check the Sign Up and the Login buttons
	Given I am viewing the log in page
	Then I select Sign up
	Then I select Login

  @Scenario:Agent_Logging_in_with_single_company_unit
    Scenario: I want to login as an Agent in an account with a single company
	Given I am an Agent and the account has one company unit
	Then I login and Log out

  @Scenario:Login_as_Owner_and_Agent_with_the_same_account
    Scenario: I want to login as an Owner and as an Agent with one email
	Given I am using one email
	Then I login as the Owner
	Then I login as an Agent