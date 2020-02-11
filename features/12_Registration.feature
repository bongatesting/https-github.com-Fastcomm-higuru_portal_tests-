Feature: hi.guru Register

  Scenario: As a User I want to register On the Portal
	Given I am viewing the log in page

  Scenario: As a User I want to register On the Portal
    Then I enter an Invalid Email

  Scenario: As a User I want to test Invalid and Valid Sign Up process
	Then I sign in with a valid email and OTP

