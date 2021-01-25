# frozen_string_literal: true

Before do
	get_number_from_fail_file
	$stdout.sync = true
end

After do |scenario|
#	logs_open = File.open('Reports/logs.txt')
	if scenario.failed? # Takes a screenshot when a scenario fails and adds it to the Allure Report
		screenshot = $web_driver.save_screenshot(Dir.pwd + "/screenshots/#{@failed_sc_count}_Failed_sc_#{scenario.name.gsub(' ', '_')}.png") ## Set the screenshot path and screenshot name
		Allure.add_attachment(name: "Failed Screenshot", source: screenshot, type: Allure::ContentType::PNG, test_case: true)
#		Allure.add_attachment(name: "Console Logs", source: logs_open, type: Allure::ContentType::TXT)
		$stdout.puts ('Scenario *** ' + scenario.name.gsub(' ', '_') + ' *** Failed').red
		set_new_fail_number ## Increment @failed_sc_count and save new value to fail_sc.csv
	elsif scenario.passed?
		screenshot = $web_driver.save_screenshot(Dir.pwd + "/screenshots/#{@failed_sc_count}_Failed_sc_#{scenario.name.gsub(' ', '_')}.png") ## Set the screenshot path and screenshot name
		$stdout.puts 'Scenario *** '.green + scenario.name.gsub(' ', '_').green + ' *** Passed'.green
#		Allure.add_attachment(name: "Console Logs", source: logs_open, type: Allure::ContentType::TXT)
		Allure.add_attachment(name: "Failed Screenshot if Scenario retried", source: screenshot, type: Allure::ContentType::PNG, test_case: true)
	end
	sleep 5
	$web_driver.quit # Shut down the selenium test run / driver
end