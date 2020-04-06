Feature: hi.guru Register

  Scenario: I want to register On the Portal
	Given I am viewing the log in page
	When I enter an Invalid Email
	Then I sign in with a valid email and OTP
	Then I create my profile

