# frozen_string_literal: true

require 'allure-cucumber'
require 'selenium-webdriver'
require "logger"

AllureCucumber.configure do |c|
	c.tms_prefix      = 'TEST:'
	c.issue_prefix    = 'SCENARIO'
	c.severity_prefix = 'URGENCY:'
	# these are used for creating links to bugs or test cases where {} is replaced with keys of relevant items
	#c.link_tms_pattern = 'http://www.jira.com/browse/{}'
	#c.link_issue_pattern = 'http://www.jira.com/browse/{}'
end

# To Generate the report, run: allure generate Reports\Allure\allure-results --clean
# Then
# To Open the report, run: allure serve Reports\Allure\allure-results