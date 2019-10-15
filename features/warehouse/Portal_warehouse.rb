# frozen_string_literal: true

class PortalWarehouse
  LOGIN_EMAIL_FIELD = { xpath: "//input[@name='ion-input-0']" }.freeze
  LOGIN_PASSWORD = { xpath: "//input[@name='ion-input-1']" }.freeze
  SUBMIT_BUTTON = { css: '.submitButton' }.freeze
  LOGO_HEADER = { css: '.header-logo' }.freeze
  VALVE_MONITOR_TAB = { xpath: '//div[3]' }.freeze
  DASHBOARD_TAB = { xpath: '//div[4]' }.freeze
  DEVICE_MANAGEMENT = { xpath: '//div[5]' }.freeze
  INVALID_LOGIN_MESSAGE = { xpath: "//span[contains(.,'Incorrect login details.')]" }.freeze
  TEMP_HISTORY = { xpath: './/*[contains(., "Temperature History")]' }.freeze

#****Valve Monitor options****
  SLEEVE_OK = { xpath: './/*[contains(., "Sleeve Ok")]' }.freeze
  SLEEVE_WORN = { xpath: "//h3[contains(.,'Sleeve Worn')]" }.freeze
  VALVE_TEMP = { xpath: "//h3[contains(.,'Temp')]" }.freeze
  VALVE_CLOSED = { xpath: "//h3[contains(.,'Valve Closed')]" }.freeze
  VALVE_OPEN = { xpath: "//h3[contains(.,'Valve Open')]" }.freeze
  WIRE_FAULT = { xpath: "//h3[contains(.,'Wire Fault')]" }.freeze

#****Device Management options****
  MY_DEVICE = { css: '.device-name' }.freeze
  DEVICE_INFO = { xpath: "//mat-panel-title[contains(.,'Device Information')]" }.freeze
  GATEWAY_STATUS = { xpath: "//mat-panel-title[contains(.,'Gateway Status')]" }.freeze
  CONTROLS = { xpath: "//mat-panel-title[contains(.,'Controls')]" }.freeze
  LOCATION = { xpath: "//mat-panel-title[contains(.,'Location')]" }.freeze
  MESSAGES = { xpath: "//mat-panel-title[contains(.,'Messages')]" }.freeze
  TEMPERATURE = { xpath: "//mat-panel-title[contains(.,'Temp')]" }.freeze

#****Left_menu_tabs****
  ARDUINO_TEMP = { css: '.ng-star-inserted:nth-child(3) .device-name' }.freeze
  ASSIST_BUTTON = { css: '.ng-star-inserted:nth-child(4) .device-name' }.freeze
  COROBAY_CORNER_NB_IOT = { css: '.ng-star-inserted:nth-child(5) .device-name' }.freeze
  GDSP_TEST = { css: '.ng-star-inserted:nth-child(6) .device-name' }.freeze
  GPS_TEST = { css: '.ng-star-inserted:nth-child(7) .device-name' }.freeze
  GEYSER_STATUS = { css: '.ng-star-inserted:nth-child(8) .device-name' }.freeze
  HOME_ALARM = { css: '.ng-star-inserted:nth-child(9) .device-name' }.freeze
  IOT_OFFICE_PIR = { css: '.ng-star-inserted:nth-child(10) .device-name' }.freeze
  LAKESIDE = { css: '.ng-star-inserted:nth-child(11) .device-name' }.freeze
  LAKESIDE_NB_IOT = { css: '.ng-star-inserted:nth-child(12) .device-name' }.freeze
  PANIC_POSITION = { css: '.ng-star-inserted:nth-child(13) .device-name' }.freeze
  PANIC_INFO = { css: '.ng-star-inserted:nth-child(14) .device-name' }.freeze
end
