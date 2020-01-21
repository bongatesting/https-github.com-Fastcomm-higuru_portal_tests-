# frozen_string_literal: true

require 'appium_lib'
require 'appium_lib_core'
require 'better_errors'
require 'colorize'
require 'parallel_tests'
require 'require_all'
require 'selenium-webdriver'
require 'touch_action'
require 'watir'
require 'watir-scroll'

#ENV['HOST'] = 'app-stage' if ENV['HOST'].nil?
ENV['HOST'] = 'app-qa' if ENV['HOST'].nil?

Before do
	$web_driver = Selenium::WebDriver.for :chrome
	#$web_driver.navigate.to "https://#{ENV['HOST']}.hi.guru/"
	$web_driver.navigate.to "https://google.com/"
	Selenium::WebDriver::Wait.new(timeout: 10)
	$web_driver.manage.window.maximize
	$web_driver.manage.timeouts.page_load = 60
	$web_driver.manage.timeouts.implicit_wait = 30
end