##### Complex methods ####################################################
require_relative "complex_methods/checks"
require_relative "complex_methods/states"
require_relative "complex_methods/user_registration"
require_relative "complex_methods/finds"
require_relative "complex_methods/scroll"
require_relative "complex_methods/checkbox"

include Checks
include States
include UserRegistration
include Finds
include Scroll
include Checkbox
##########################################################################

##### Helper Methods #####################################################
require_relative "helper_methods/element_array_helpers"
require_relative "helper_methods/history_helpers"
require_relative "helper_methods/rescue_helpers"
require_relative "helper_methods/wait_helpers"
require_relative "helper_methods/text_helpers"
require_relative "helper_methods/android_helpers"
require_relative "helper_methods/count_helpers"
require_relative "helper_methods/long_tap_helpers"
require_relative "helper_methods/check_helpers"
require_relative "helper_methods/visual_helpers"
require_relative "helper_methods/select_helpers"
require_relative "helper_methods/db_helpers"
require_relative "helper_methods/localization_helpers"

include ElementArrayHelpers
include HistoryHelpers
include RescueHelpers
include WaitHelpers
include TextHelpers
include AndroidHelpers
include CountHelpers
include LongTapHelpers
include CheckHelpers
include VisualHelpers
include SelectHelpers
include DbHelpers
include LocalizationHelpers
##########################################################################

## Simple Methods ########################################################
require_relative "simple_methods/activities"

include Activities
##########################################################################

## App Helpers ###########################################################
require_relative "app_helpers/app_helpers"

include AppHelpers
##########################################################################