# frozen_string_literal: true

class PortalWarehouse
  LOGIN_EMAIL_FIELD = { xpath: "//input[@name='ion-input-0']" }.freeze
  SECOND_LOGIN_EMAIL_FIELD = { xpath: "//input[@name='ion-input-2']" }.freeze
  LOGIN_PASSWORD = { xpath: "//input[@name='ion-input-1']" }.freeze
  SECOND_LOGIN_PASSWORD = { xpath: "//input[@name='ion-input-3']" }.freeze
  SUBMIT_BUTTON = { css: '.submitButton' }.freeze
  LOGO_HEADER = { css: '.header-logo' }.freeze
  VALVE_MONITOR_TAB = { xpath: '//div[3]' }.freeze
  DASHBOARD_TAB = { xpath: '//div[4]' }.freeze
  DEVICE_MANAGEMENT_TAB = { xpath: '//div[5]' }.freeze
  OFFICE_TESTING = { xpath: '//app-menu-item[contains(.,\'Office Testing\')]' }.freeze
  MY_VALVE = { xpath: '/html/body/app-root/div/ion-app/app-home/div/app-device-management-container/div/app-device-list-container/div[2]/app-device-list-table/ngx-datatable/div/datatable-body/datatable-selection/datatable-scroller/datatable-row-wrapper/datatable-body-row/div[2]/datatable-body-cell[1]/div/div' }.freeze
  INVALID_LOGIN_MESSAGE = { xpath: "//span[contains(.,'Incorrect login details.')]" }.freeze
  TEMP_HISTORY = { xpath: './/*[contains(., "Temperature History")]' }.freeze
  ACCOUNT_DROPDOWN = { xpath: "//ion-icon[@name='arrow-dropdown']" }.freeze
  LOGOUT = { css: '.menu-item:nth-child(3)' }.freeze

#****Valve Monitor options****
  SLEEVE_OK = { xpath: './/*[contains(., "Sleeve Ok")]' }.freeze
  SLEEVE_WORN = { xpath: "//h3[contains(.,'Sleeve Worn')]" }.freeze
  VALVE_TEMP_TEXT = { xpath: "//h3[contains(.,'Hot Tub Temperature')]" }.freeze
  VALVE_SHUT = { xpath: "//h3[contains(.,'Valve Shut')]" }.freeze
  VALVE_OPEN = { xpath: "//h3[contains(.,'Valve Open')]" }.freeze
  FAULTY_WIRE = { xpath: "//h3[contains(.,'Faulty Wire')]" }.freeze

#****Dashboard options****
  MY_DEVICE = { class: 'device-name' }.freeze
  DEVICE_INFO = { xpath: "//mat-panel-title[contains(.,'Device Information')]" }.freeze
  GATEWAY_STATUS = { xpath: "//mat-panel-title[contains(.,'Gateway Status')]" }.freeze
  CONTROLS = { xpath: "//mat-panel-title[contains(.,'Controls')]" }.freeze
  LOCATION = { xpath: "//mat-panel-title[contains(.,'Location')]" }.freeze
  MESSAGES = { xpath: "//mat-panel-title[contains(.,'Messages')]" }.freeze
  DEVICE_VALUE_TEMP = { xpath: ".//*[contains(., 'Temp: 41')]" }.freeze
  DEGREES_CELSIUS = {xpath: ".//*[contains(., '41 °C')]" }.freeze
  MESSAGE_TEMP = { xpath: "//span[contains(.,'{\"temp\": 41}')]" }.freeze


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

#****Device Management****
  DEVICE_NAME_TEXT = { css: '.datatable-header-cell:nth-child(1) .datatable-header-cell-label' }
  EDART_DEVICE = { xpath: '//datatable-row-wrapper[16]/datatable-body-row/div[2]/datatable-body-cell/div/div' }
  DEVICE_MANAGEMENT_PAGE = { class: 'device-list-container' }
  TEMP_THREE_DOT_MENU = { css: '.datatable-body:nth-child(1) .datatable-row-wrapper:nth-child(3) .mat-icon:nth-child(1)' }
  EDIT_ALARM = { xpath: '/html/body/div[2]/div[2]/div/div/div/button[2]' }
  EQUALS = { xpath: '//ion-item[1]/ion-radio' }
  GREATER_THAN = { xpath: '//ion-item[2]/ion-radio' }
  LESS_THAN = { xpath: '//ion-item[3]/ion-radio' }
  GREATER_OR_EQUAL = { xpath: '//ion-item[4]/ion-radio' }
  LESS_OR_EQUAL = { xpath: '//ion-item[5]/ion-radio' }
  VALUE_FIELD = { css: '.form-control' }
  UPDATE_BUTTON = { xpath: '//span[contains(.,\'Update\')]' }
  GREEN_ICON = { class: 'icon-container ok' }
  RED_ICON = { class: 'icon-container' }
end
