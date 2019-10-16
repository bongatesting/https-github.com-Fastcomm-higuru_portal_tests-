# require 'allure-cucumber'
#
# AllureCucumber.configure do |c|
# 	c.clean_dir  = false
# 	c.output_dir = "Reports"
# 	c.tms_prefix  = '@Epic: '
# 	c.issue_prefix = '@Jira: '
# 	c.severity_prefix  = '@Urgency: '
# end
# #Example:
# # Scenario: Leave First Name Blank
# #     When I register an account without a first name
# #     Then exactly (1) [validation_error] should be visible
#
# class Cucumber::Core::Test::Step
# 	def name
# 		return text if self.text == 'Before hook'
# 		return text if self.text == 'After hook'
# 		"#{source.last.keyword}#{text}"
#
# 	end
# end
#
# include AllureCucumber::DSL
# attach_file(title, file, attach_to_step=true) if ENV['ALLURE']=='true'
#
# # To generate Report add --format AllureCucumber::Formatter to cucumber command in CMD
# # Example: cucumber features\05_Calls.feature --format AllureCucumber::Formatter
# # cucumber features\00_Critical_Regression.feature --format AllureCucumber::Formatter
# # To specify report path add: --format AllureCucumber::Formatter --D:\Reports\output\dir while running cucumber
# # To run the Report in Chrome: Open CMD and go to
# # path\to\allure\bin'''
# # EX: D:\Fastcomm Projects\allure-commandline-2.12.1\allure-2.12.1\bin
# # and then type:
# # allure serve "path\to\report\folder"
# # EX: allure serve "D:\Fastcomm Projects\Latch\l4b_android_tests\Reports"