## frozen_string_literal: true
#
#require 'allure-cucumber'
#require 'selenium-webdriver'
#
#AllureCucumber.configure do |config|
#	#config.results_directory = "/Reports/Allure/"
#	#config.clean_results_directory = true
#	#config.logger = Logger::INFO
#	config.tms_prefix      = 'TEST:'
#	config.issue_prefix    = 'SCENARIO'
#	config.severity_prefix = 'URGENCY:'
#	# these are used for creating links to bugs or test cases where {} is replaced with keys of relevant items
#	#config.link_tms_pattern = 'http://www.jira.com/browse/{}'
#	#config.link_issue_pattern = 'http://www.jira.com/browse/{}'
#end
#
## To Generate the report, run: allure generate "Reports\Allure\allure-results" --clean
## Then
## To Open the report, run: allure serve "Reports\Allure\allure-results"