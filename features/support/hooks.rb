# frozen_string_literal: true

Before do
	get_number_from_fail_file
	$stdout.sync = true
end

# After do |scenario|
# 	logs_open = File.open('Reports/logs.txt')
# 	if scenario.failed? # Takes a screenshot when a scenario fails and adds it to the Allure Report
# 		# screenshot = $web_driver.save_screenshot(Dir.pwd + "/screenshots/#{@failed_sc_count}_Failed_sc_#{scenario.name.gsub(' ', '_')}.png") ## Set the screenshot path and screenshot name
# 		Allure.add_attachment(name: "Failed Screenshot", source: screenshot, type: Allure::ContentType::PNG, test_case: true)
# 		Allure.add_attachment(name: "Console Logs", source: logs_open, type: Allure::ContentType::TXT)
# 		set_new_fail_number ## Increment @failed_sc_count and save new value to fail_sc.csv
# 		$stdout.puts ('Scenario *** ' + scenario.name.gsub(' ', '_') + ' *** Failed').red
# 	elsif scenario.passed?
# 		$stdout.puts ('Scenario *** ' + scenario.name.gsub(' ', '_') + ' *** Passed').green
# 		Allure.add_attachment(name: "Console Logs", source: logs_open, type: Allure::ContentType::TXT)
# 	end
# 	sleep 5
# 	$web_driver.quit # Shut down the selenium test run / driver
# end