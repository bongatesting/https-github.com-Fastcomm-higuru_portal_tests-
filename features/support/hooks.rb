# frozen_string_literal: true

#def run
#	setup
#	begin
#		yield
#	rescue RSpec::Expectations::ExpectationNotMetError => e
#		puts e.message
#		$web_driver.save_screenshot "./#{Time.now.strftime('screenshot__%d_%m_%Y__%H_%M_%S')}.png"
#	end
#	teardown
#end

Before do
	get_number_from_fail_file
end

After do |scenario| ## Shut down the appium test run / driver
	if scenario.failed? ## Takes a screenshot when a scenario fails
		$web_driver.save_screenshot(Dir.pwd + "/tmp/screenshots/#{@failed_sc_count}_Failed_sc_ #{scenario.name.gsub(' ', '_')}.png") ## Set the screenshot path and screenshot name
		# driver.save_screenshot(Dir.pwd + "/tmp/screenshots/Failed.png") ## Set the screenshot path and screenshot name
		get_number_from_fail_file
		set_new_fail_number ## Increment @failed_sc_count and save new value to failed_sc.csv

		# Temp check for App Crash
		# if $app_driver.finds_exact("Latch QA has stopped").count > 0
		#   $app_driver.find_exact("Open app again").click
		# end
	end
	sleep 5
	 $web_driver.quit
end

After do |scenario|
	puts scenario.status.inspect
end
