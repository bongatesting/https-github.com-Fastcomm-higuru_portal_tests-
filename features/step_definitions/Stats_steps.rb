# frozen_string_literal: true

wait = Selenium::WebDriver::Wait.new(timeout: 80)

Then('I navigate to the stats Tab and View the Statistics') do
	$web_driver.find_element(ElementWarehouse::STATS_TAB).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::STATS_DROP_DOWN_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::TODAY_STATS).click
	sleep 3
	scroll_to($web_driver.find_element(ElementWarehouse::TOP_CONVO_TOPICS))
	sleep 4
	scroll_to($web_driver.find_element(ElementWarehouse::CONVO_RESOLUTION_TYPE))
	sleep 3
	scroll_to($web_driver.find_element(ElementWarehouse::STATS_REAL_TIME))
	sleep 3
	$web_driver.find_element(ElementWarehouse::STATS_DROP_DOWN_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::LAST_WEEK_STATS).click
	sleep 3
	scroll_to($web_driver.find_element(ElementWarehouse::TOP_CONVO_TOPICS))
	sleep 4
	scroll_to($web_driver.find_element(ElementWarehouse::CONVO_RESOLUTION_TYPE))
	sleep 3
	scroll_to($web_driver.find_element(ElementWarehouse::STATS_REAL_TIME))
	sleep 3
	$web_driver.find_element(ElementWarehouse::STATS_DROP_DOWN_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::LAST_MONTH_STATS).click
	sleep 3
	scroll_to($web_driver.find_element(ElementWarehouse::TOP_CONVO_TOPICS))
	sleep 4
	scroll_to($web_driver.find_element(ElementWarehouse::CONVO_RESOLUTION_TYPE))
	sleep 3
	scroll_to($web_driver.find_element(ElementWarehouse::STATS_REAL_TIME))
	sleep 3
	$web_driver.find_element(ElementWarehouse::STATS_DROP_DOWN_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::LAST_YEAR_STATS).click
	sleep 3
	scroll_to($web_driver.find_element(ElementWarehouse::TOP_CONVO_TOPICS))
	sleep 4
	scroll_to($web_driver.find_element(ElementWarehouse::CONVO_RESOLUTION_TYPE))
	sleep 4
	scroll_to($web_driver.find_element(ElementWarehouse::STATS_REAL_TIME))
	sleep 3
end

Then('I choose a Custom Date and Export to PDF') do
	$web_driver.find_element(ElementWarehouse::STATS_DROP_DOWN_BUTTON).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::CUSTOM_DATE).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::DATE_DROP_DOWN_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::YEAR_2020_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::AUGUST_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::CHOOSE_DATE_1_BUTTON).click
	sleep 3
	scroll_to($web_driver.find_element(ElementWarehouse::NEXT_MONTH_BUTTON))
	sleep 3
	$web_driver.find_element(ElementWarehouse::NEXT_MONTH_BUTTON).click
 	sleep 3
	$web_driver.find_element(ElementWarehouse::CHOOSE_DATE_2_BUTTON).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::CUSTOM_DATE_APPLY_BUTTON).click
	sleep 4
	$web_driver.find_element(ElementWarehouse::EXPORT_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::EXPORT_PDF_BUTTON).click
	sleep 6
end

Then('Navigate to the Agent Activity and View the Available stats') do
	$web_driver.find_element(ElementWarehouse::AGENT_ACTIVITY_TAB).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::STATS_DROP_DOWN_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::LAST_WEEK_STATS_2).click
	sleep 5
	$web_driver.find_element(ElementWarehouse::STATS_RESOLVED_DROP_DOWN).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::STATS_HIGHEST_RESOLVED).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::STATS_DROP_DOWN_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::LAST_MONTH_STATS_2).click
	sleep 5
	$web_driver.find_element(ElementWarehouse::STATS_RESOLVED_DROP_DOWN).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::STATS_HIGHEST_RESOLVED).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::STATS_DROP_DOWN_BUTTON).click
	sleep 3
	$web_driver.find_element(ElementWarehouse::LAST_YEAR_STATS_2).click
	sleep 5
end