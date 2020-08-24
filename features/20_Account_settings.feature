Feature: Account Settings Feature

  @Feature: Account Settings Feature
  @Urgency: Medium

  Scenario: I want to enhance Security on my Account
	Given I am logged in
	Then I update my Password and Logout
	Then I log in with the updated password