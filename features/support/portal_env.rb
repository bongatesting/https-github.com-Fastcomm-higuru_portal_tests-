# frozen_string_literal: true

require 'appium_lib'
require 'bundler/inline'
require 'byebug'
require 'colorize'
require 'pycall'
require 'rspec'
require 'rspec/expectations'
require 'selenium-webdriver'
require 'securerandom'
require 'touch_action'
require 'watir'
require 'watir-scroll'

ENV['HOST'] = 'app-qa' if ENV['HOST'].nil?

Before do
	$web_driver = Selenium::WebDriver.for :chrome
	# $web_driver.navigate.to "https://#{ENV['HOST']}.hi.guru/account/login"
	$web_driver.navigate.to "https://google.com/"
	Selenium::WebDriver::Wait.new(timeout: 60)
	$web_driver.manage.window.maximize
	$web_driver.manage.timeouts.page_load = 60
	$web_driver.manage.timeouts.implicit_wait = 60
end