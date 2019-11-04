# frozen_string_literal: true

class MethodWarehouse
end

def backup_long_press
  Appium::TouchAction.new.press(x: 280, y: 660).wait(1000).release.perform
end

def scroll_down
  swipe(start_x: 500, start_y: 1350, end_x: 500, end_y: 800)
end

def scroll_up
  swipe(start_x: 530, start_y: 340, end_x: 530, end_y: 1300)
end

def browser_scroll
$web_driver.execute_script('window.scrollTo(0, document.body.scrollHeight)')
end

def scroll_to_element(element, locator=nil)
  script_string = "var viewPortHeight = Math.max(document.documentElement.clientHeight, window.innerHeight || 0);" +
      "var elementTop = arguments[0].getBoundingClientRect().top;" +
      "window.scrollBy(0, elementTop-(viewPortHeight/2));"
  element = element.nil? ? find(locator) : element
  execute_script(script_string, element)
end

def scroll_in_page
  $web_driver.find_element(class: 'device-list-container').click
  scroll = $web_driver.find_element(xpath: ".//*[contains(., 'Panic Position')]")
  scroll.send_keys(:page_down)
end

def scroll_in_dashboard
  scroll = $web_driver.find_element(ElementWarehouse::MESSAGE_TEMP)
  scroll.location_once_scrolled_into_view
end
#scroll_in_page
# $web_driver.find_element(ElementWarehouse::EDART_DEVICE).click
# scroll.send_keys(:page_down)


#To save a screenshot on specific step:
# # $web_driver.save_screenshot (Dir.pwd + "/tmp/screenshots/" + "Failed_sc_#{Time.now.strftime('screenshot__%d_%m_%Y__%H_%M_%S')}.png")


##----Touch Actions Method----##
# Appium::TouchAction.new.long_press(x: 500, y: 520, duration: 2000).perform
# Appium::TouchAction.new.press(x: 280, y: 530).wait(2000).release.perform
# Appium::TouchAction.new.tap(x: 76, y: 139, count: 1).release.perform

##----Scroll Actions Method----##
# Appium::TouchAction.new.scroll(10, 100).perform
# scroll_to_exact('your text you are looking for here').click

# ##----Swipe notifications bar down----##
# swipe(start_x: 520, start_y: 55, end_x: 520, end_y: 1160)
# ##----Swipe notifications bar up----##
# swipe(start_x: 520, start_y: 1150, end_x: 520, end_y: 55)

# ##----Wait Method----##
# wait_true{find_element(ElementWarehouse::SELECT_SEARCH_CHANNEL).click}
# wait_until{find_element(ElementWarehouse::ACTION_BUTTON).click}
# wait = Selenium::WebDriver::Wait.new(:timeout => 15)

# ##----Native Keyboard Method----##
# hide_keyboard if is_keyboard_shown
# driver.press_keycode(66) - - - - Pressing Enter on Keyboard

# ##----Find Element by Index Method----## Just Change the instance to the index (ie: instance(1) or instance(2))---
# INDEX_1 = find_element(:uiautomator, 'new UiSelector().className("android.view.ViewGroup").instance(0)').click

# ##-----Find Element by certain Text within the String-----##
# find_element(uiautomator: 'new UiSelector().textContains("co.za")')
# find('faq')
