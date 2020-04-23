Feature: Fastcomm Web Widget Test

# This test is to be scheduled with an Agent before running

  @Feature: Fastcomm Widget Feature
  @Urgency: High

  Scenario: As a user I want to Test speaking to a Live agent
    Given I am viewing the Fastcomm website
    When I initiate chatting to a live agent
    Then I get feedback from the agent