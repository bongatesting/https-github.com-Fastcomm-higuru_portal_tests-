# frozen_string_literal: true

wait = Selenium::WebDriver::Wait.new(timeout: 80)

Then('I navigate to the stats Tab and View the Stats') do
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

Then('I choose a Custom Date and Export Stats') do
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
	scroll_to($web_driver.find_element(ElementWarehouse::STATS_REAL_TIME))
	sleep 3
end