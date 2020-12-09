module WaitHelpers
  stale_element_retries = 3
  explicit_wait_sleep = 0.5

def wait_for_portal(object, time_limit = 30)
  attempts = 0

  # DOM sometimes changes element which causes StaleElementReferenceError, we should retry then
  while attempts < stale_element_retries
    begin
      return explicit_wait_for(object, time_limit)
    rescue Selenium::WebDriver::Error::StaleElementReferenceError
      attempts += 1
      raise if attempts >= stale_element_retries
    end
  end
end

def is_displayed(object, time_limit = 1)
  wait = Selenium::WebDriver::Wait.new(timeout: time_limit)

  begin
    if object.class.to_s == 'SeleniumMethod'
      wait.until { object.find_el.displayed? }
      true
    else
      raise "** Unable to wait for #{object} **"
    end
  rescue Selenium::WebDriver::Error::TimeOutError
    false
  end
end

def wait_for_element_to_disappear_portal(object, time_limit = 30)
  Timeout.timeout(time_limit) do
    sleep 0.5 while object.find_arr.nil?

    begin
      sleep 0.5 until object.find_arr.count <= 0
    rescue Timeout::Error
      raise "** #{object} Stayed visible within the #{time_limit} seconds time limit **"
    end
  end
end

def wait_for_text(object, text, time_limit = 30)
  Timeout.timeout(time_limit) do
    sleep 0.5 until object.get_text == text
  end
end

def wait_for_element_to_become_enabled(object, time_limit = 30)
  wait = Selenium::WebDriver::Wait.new(timeout: time_limit)

  begin
    if object.class.to_s == 'SeleniumMethod'
      wait.until { object.find_el.enabled? }
      true
    else
      raise "** Unable to wait for #{object} **"
    end
  rescue Selenium::WebDriver::Error::TimeOutError
    false
  end
end

  private

def explicit_wait_for(object, time_limit = 30)
  wait = Selenium::WebDriver::Wait.new(timeout: time_limit)

  begin
    Timeout.timeout(time_limit) do
      found = false
      until found

        selenium_element = nil

        if object.class.to_s == 'Selenium::WebDriver::Element'
          selenium_element = object
        elsif object.class.to_s == 'SeleniumMethod'
          elements = object.find_arr
          selenium_element = elements[0] if elements.count > 0
        else
          raise "** Unable to wait for #{object} **"
        end

        found = !selenium_element.nil? && selenium_element.displayed?

        sleep explicit_wait_sleep unless found
      end
    end
  rescue Timeout::Error
    if object.class.to_s == 'Selenium::WebDriver::Element'
      raise Timeout::Error, "Timeout while waiting for #{object.type_key}:#{object.type_value}"
    end

    raise
  end
end

def wait_for_cookie_change
  Timeout.timeout(3) do
    loop do
      cookie_changed = $web_driver.execute_script('current_cookie = document.cookie; while(current_cookie != document.cookie) eval(); return 1;')
      break if cookie_changed == 1
    end
  end
end
end
