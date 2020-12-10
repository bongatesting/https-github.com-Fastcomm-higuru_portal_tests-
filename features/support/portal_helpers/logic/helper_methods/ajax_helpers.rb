module AjaxHelpers
  def wait_for_ajax_portal
    Timeout.timeout(120) do ## Wait two minute for a ajax call to finish
      loop do
        begin
          active = $web_driver.execute_script('return jQuery.active') ## Check if ajax is active
        rescue Errno::EADDRNOTAVAIL, Selenium::WebDriver::Error::UnknownError
          $web_driver.execute_script("window.location.reload()")
        end
        break if active == 0
      end
    end
  end  
end