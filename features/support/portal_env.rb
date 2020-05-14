# frozen_string_literal: true

require 'appium_lib'
require 'appium_lib_core'
require 'better_errors'
require 'colorize'
require 'parallel_tests'
require 'page-object'
require 'require_all'
require 'selenium-webdriver'
require 'touch_action'
require 'watir'
require 'watir-scroll'

# ENV['HOST'] = 'app-stage' if ENV['HOST'].nil?
ENV['HOST'] = 'app-qa' if ENV['HOST'].nil?

Before do # Chrome Env
  options = Selenium::WebDriver::Chrome::Options.new
  # options.add_argument('--headless') # configure the driver to run in headless mode
  $web_driver = Selenium::WebDriver.for :chrome, options: options
  #$web_driver.navigate.to "https://#{ENV['HOST']}.hi.guru/"
  $web_driver.navigate.to "https://google.com/"
  Selenium::WebDriver::Wait.new(timeout: 10)
  $web_driver.manage.window.maximize
  $web_driver.manage.timeouts.page_load = 240
  $web_driver.manage.timeouts.implicit_wait = 10
end

# Before do # Firefox Env
#   options = Selenium::WebDriver::Firefox::Options.new
#   # options.add_argument('--headless') # configure the driver to run in headless mode
#   $web_driver = Selenium::WebDriver.for :firefox, options: options
#   #$web_driver.navigate.to "https://#{ENV['HOST']}.hi.guru/"
#   $web_driver.navigate.to "https://google.com/"
#   Selenium::WebDriver::Wait.new(timeout: 10)
#   $web_driver.manage.window.maximize
#   $web_driver.manage.timeouts.page_load = 240
#   $web_driver.manage.timeouts.implicit_wait = 10
# end

# Before do # Safari Env
#   options = Selenium::WebDriver::Safari::Options.new
#   # options.add_argument('--headless') # configure the driver to run in headless mode
#   $web_driver = Selenium::WebDriver.for :safari, options: options
#   #$web_driver.navigate.to "https://#{ENV['HOST']}.hi.guru/"
#   $web_driver.navigate.to "https://google.com/"
#   Selenium::WebDriver::Wait.new(timeout: 10)
#   $web_driver.manage.window.maximize
#   $web_driver.manage.timeouts.page_load = 240
#   $web_driver.manage.timeouts.implicit_wait = 10
# end