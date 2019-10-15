require 'appium_lib'
require 'allure-cucumber'
require "bundler/inline"
require 'byebug'
require 'colorize'
require 'rspec'
require 'rspec/expectations'
require 'selenium-webdriver'
require 'securerandom'
require 'touch_action'
require 'watir'

if ENV['HOST'].nil?
	ENV['HOST'] = "portal-stage"
end

Before do
	$web_driver = Selenium::WebDriver.for :chrome
	$web_driver.navigate.to "https://#{ENV['HOST']}.hellothing.com/#login"
	Selenium::WebDriver::Wait.new(:timeout => 0)
	$web_driver.manage.window.maximize
	$web_driver.manage.timeouts.page_load = 30
	$web_driver.manage.timeouts.implicit_wait = 30
end


After do
	$web_driver.manage.timeouts.page_load = 30
	$web_driver.manage.timeouts.implicit_wait = 30
	$web_driver.quit
end
