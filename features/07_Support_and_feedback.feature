Feature: Support and Feedback Feature

  @TEST:Support_and_feedback
  @SCENARIO:Send_feedback
  @URGENCY:Medium

  @Scenario:Sending_feedback
  Scenario: I want to Send Feedback
	Given I have some Feedback
	Then I send Feedback
	Then I check whether the Feedback has been received