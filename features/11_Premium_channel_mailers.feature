Feature: higuru premium channel mailers

  @TEST:higuru_premium_channel_mailers
  @SCENARIO:Premium_channels
  @URGENCY:High

  @Scenario:Adding_premium_channels
  Scenario: I want to add a premium channel and receive the mailers
	Given I login
	Then I add the premium channel
	Then I delete the premium channel