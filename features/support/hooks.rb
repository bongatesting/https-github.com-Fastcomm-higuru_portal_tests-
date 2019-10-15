# frozen_string_literal: true

Before do
	$web_driver.start_driver
end

# Before('@reset_app_before', &method(:reset))

Before do
	get_number_from_fail_file
end

After do |scenario| ## Shut down the appium test run / driver
	if scenario.failed? ## Takes a screenshot when a scenario fails
		driver.save_screenshot(Dir.pwd + "/tmp/screenshots/#{@failed_sc_count}_Failed_sc_ #{scenario.name.gsub(' ', '_')}.png") ## Set the screenshot path and screenshot name
		# driver.save_screenshot(Dir.pwd + "/tmp/screenshots/Failed.png") ## Set the screenshot path and screenshot name
		get_number_from_fail_file
		set_new_fail_number ## Increment @failed_sc_count and save new value to fail_sc.csv

		# Temp check for App Crash
		# if $app_driver.finds_exact("Latch QA has stopped").count > 0
		#   $app_driver.find_exact("Open app again").click
		# end
	end
end

After do
	sleep 2
	$web_driver.driver_quit
end
