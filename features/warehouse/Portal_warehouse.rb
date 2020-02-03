# frozen_string_literal: true

class ElementWarehouse
	WIDGET = { xpath: '//*[@id="higuru-webchat"]/div' }
	FASTCOMM_WIDGET = { css: '.higuru_higuru-web-icon' }
	FASTCOMM_LOGO = { xpath: "//img[@alt='Linking People Places Things']" }
	LOGO = { xpath: '/html/body/app-root/app-account-container/div/div[1]/img' }
	EMAIL_FIELD = { css: '.form-group:nth-child(1) > .form-input' }
	PASSWORD_FIELD = { css: '.form-group:nth-child(2) > .form-input' }
	LOGIN_BUTTON = { css: '.btn > div' }
	I_AGREE_BUTTON = { css: '.radio-container > .ng-dirty' }
	NEXT_BUTTON = {  xpath: "/html/body/app-root/app-account-container/div/div[2]/app-register-form/div/div/div[2]/form/div/button" }
	ALLOW_NOTIFICATION = { xpath: '/html/body/app-root/app-home/app-notification-bar/div/div[2]/span[2]/button' }
	ALLOW_NATIVE_NOTIFICATION = { xpath: "//span[contains(.,'Allow')]" }
	ALLOW_NATIVE_NOTIFICATION_1 = { xpath: "//*[contains(.,'Allow')]" }
	CLOSE_NOTIFICATION = { xpath: '/html/body/app-root/app-home/app-notification-bar/div/div[3]' }
	CLOSE_NOTIFICATION_CONVO_PAGE = { xpath: '/html/body/app-root/app-agent-interface-page/div[1]/app-notification-bar/div/div[3]' }
	CONVERSATIONS_TAB = { xpath: '//*[@id="sidebar-wrapper"]/div[2]/ul/li[2]/span[1]/img' }
	INBOUND_TAB = { xpath: "//span[contains(.,'Inbound')]" }
	OUTBOUND_TAB = { xpath: "//span[contains(.,'Outbound')]" }
	MAIN_MENU = { css: '.logo-small' }
	STATS_TAB = { xpath: '//*[@id="sidebar-wrapper"]/div[2]/ul/li[3]' }
	CHANNELS_TAB = { xpath: '//*[@id="sidebar-wrapper"]/div[2]/ul/li[4]' }
	TEAMS_TAB = { xpath: '//*[@id="sidebar-wrapper"]/div[2]/ul/li[5]' }
	PEOPLE_TAB = { xpath: '//*[@id="sidebar-wrapper"]/div[2]/ul/li[6]' }
	DOCUMENT_LIBRARY_TAB = { xpath: '//*[@id="sidebar-wrapper"]/div[2]/ul/li[7]' }
	ADD_DOCUMENT_BUTTON = { css: '.title-button' }
	ADD_ATTACHMENT = { css: '.title-button' }
	UPLOAD_BUTTON = { xpath: '//*[@id="upload-btn"]' }
	UPLOAD_ICON = { xpath: '//*[@id="doc-upload-overlay"]/div[4]/div[1]/img' }
	FAQ_TAB = { xpath: '//*[@id="sidebar-wrapper"]/div[2]/ul/li[8]/span[2]/a' }
	BILLING = { xpath: '/html/body/app-root/app-home/div/div/app-billing-container/div/div[1]' }
	AGENT_IMAGE = { xpath: '' }
	BILLING_INFO = { xpath: '//*[@id="mat-tab-label-0-2"]/div' }
	COMPANY_NAME = { css: '.company-name' }
	COMPANY_UNIT = { css: '.image-rectangle > img' }
	CONVERSATION_HISTORY_TAB = { xpath: '//*[@id="sidebar-wrapper"]/div[2]/ul/li[9]' }
	BOT_TAB = { xpath: '//*[@id="sidebar-wrapper"]/div[2]/ul/li[10]' }
	CONVO_HISTORY = { xpath: '//*[contains(., "Conversation History")]' }
	CONVO = { xpath: '//*[contains(., "Conversations")]' }
	CONVO_SEARCH_FIELD = { id: 'mat-input-1' }
	TEN_SHOULD_NOT_SEE = { xpath: '//*[contains(., "10290")]' }
	SUPPORT_REPLY = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[2]/div[3]/div[2]/button[2]' }
	PRODUCT_INFO_REPLY = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[2]/div[3]/div[2]/button[3]' }
	FEEDBACK_REPLY = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[2]/div[3]/div[2]/button[4]' }
	CHAT_WITH_US_REPLY = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[2]/div[3]/div[2]/button[5]' }
	ATTACH_FILE_BUTTON = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[3]/div[2]/label/svg/g' }
	CHAT_CLOSE_BUTTON = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[1]/div[1]/svg/path' }
	IN_CHAT_URL = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[2]/div[3]/div[1]/div/div/div[1]/a' }
	GET_STARTED_BUTTON = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[2]/div[3]/div[2]/button[1]' }
	GET_STARTED_REPLY = { xpath: '//*[contains(.,"To get you started on your journey")]' }
	WANT_TO_KNOW_MORE_REPLY = { xpath: '//*[contains(.,"Want to know more?")]' }
	GREAT_BOT_RESPONSE = { xpath: '//*[contains(.,"Great!")]' }
	HELP_BOT_RESPONSE = { xpath: '//*[contains(.,"Is there anything else I can help you with?")]' }
	YES_BUTTON = { xpath: '//button[contains(.,"Yes")]' }
	NO_BUTTON = { xpath: '//button[contains(.,"No")]' }
  ADD_IMAGE = {id: 'upload-btn'}
	SUPPORT_BUTTON = { css: '.higuru_quick-reply:nth-child(2)' }
	SUPPORT_BOT_RESPONSE = { xpath: '//*[contains(.,"Please give us a short")]' }
	DESCRIPTION_BOT_RESPONSE_1 = { xpath: '//*[contains(.,"Thank you!")]' }
	DESCRIPTION_BOT_RESPONSE_2 = { xpath: '//*[contains(.,"touch shortly.")]' }
  PRODUCT_INFO_BUTTON = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[2]/div[3]/div[2]/button[3]' }
	FEEDBACK_BUTTON = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[2]/div[3]/div[2]/button[4]' }
	CHAT_WITH_US_BUTTON = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[2]/div[3]/div[2]/button[5]' }
  SEND_BUTTON = { css: '.higuru_compose-action-icon path' }
  CHAT_FIELD = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[3]/div[1]/div/div/div[1]' }
  CONVERSATION_RESOLVED_TEXT = {xpath: "//*[contains(.,'Conversation resolved by bot')]" }
	GET_STARTED_TEXT = { xpath: "//button[contains(.,'Get Started')]" }
	SUPPORT_TEXT = { xpath: "//button[contains(.,'Support')]" }
	PRODUCT_INFO_TEXT = { xpath: "//button[contains(.,'Product Info')]" }
	FEEDBACK_TEXT = { xpath: "//button[contains(.,'Feedback')]" }
	CHAT_WITH_US_TEXT = { xpath: "//button[contains(.,'Chat with us')]" }
	SECOND_BOT_RESPONSE = { xpath: "//*[contains(.,'Hi! Welcome to hi.guru')]" }
	BOT_PLEASURE_RESPONSE = { xpath: "//*[contains(.,'It's my pleasure.')]" }
	ERROR_MESSAGE = { xpath: "//*[contains(.,'Invalid Email address provided')]" }
	VERIFICATION_TEXT = { xpath: "//*[contains(.,' Account verification ')]" }
	GMAIL_SIGN_IN_BUTTON = { xpath: "//a[contains(.,'Sign in')]" }
	OTP_FIELD = { xpath: '//*[@id="1"]' }
	SIGN_IN = { xpath: '/html/body/div[1]/div[1]/div[5]/ul/li[2]/a' }
	OTP_NEXT_BUTTON = { xpath: '//*[@id="5"]' }
	GMAIL_EMAIL_FIELD = {id: 'identifierId'}
	GMAIL_NEXT_BUTTON = { xpath: '//*[@id="identifierNext"]/span/span' }
	GMAIL_PASSWORD_FIELD = { xpath: '//input[@name="password"]' }
	GMAIL_PASSWORD_NEXT_BUTTON = { xpath: '//*[@id="passwordNext"]/span' }
	CONFIRM_BUTTON = { xpath: '' }
	SIGN_UP_BUTTON = { xpath: "/html/body/app-root/app-account-container/div/div[2]/app-login-form/div/div[4]/a" }
	ENTER_NAME_FIELD = { css: 'form-input' }
	ADD_IMAGE_ICON = { css: '.add-image-icon-other' }
	CHOOSE_FILE_BUTTON = { xpath: '//*[@id="custom-input"]' }
	CREATE_PROFILE_NEXT_BUTTON = { xpath: '/html/body/app-root/app-account-container/div/div[2]/app-profile-form/div/div/div[2]/form/div/div[4]/button' }
	CREATE_COMPANY_DONE_BUTTON = { xpath: '/html/body/app-root/app-account-container/div/div[2]/app-company-form/div/div/div[2]/form/div/div[4]/button/div' }
	PROFILE_IMAGE_SELECT_BUTTON = { xpath: '/html/body/ngb-modal-window/div/div/div[3]/button' }
	ENTER_COMPANY_NAME_FIELD = { css: '.form-input' }
	GMAIL_VERIFICATION_TEXT = { css: ".bqe:nth-child(1)" }
	VERIFICATION_CODE = { xpath: '//*[@id=":rq"]/div/div[1]/table/tbody/tr/td[2]/div/table/tbody/tr[2]/td/table/tbody/tr[1]/td/p[1]' }
	NEXT_BUTTON_2 = { xpath: "/html/body/app-root/app-account-container/div/div[2]/app-register-form/div/div/div[2]/form/div/button/div" }
	BUSINESS_EMAIL_FIELD = { css: ".ng-invalid:nth-child(2)" }
	BUSINESS_PASSWORD_FIELD = { xpath: "/html/body/app-root/app-account-container/div/div[2]/app-register-form/div/div/div[2]/form/div/div[2]/input" }
	SIGN_UP_CHECKBOX = { xpath: '/html/body/app-root/app-account-container/div/div[2]/app-register-form/div/div/div[2]/form/div/div[3]/label/input'}
	DONE_BUTTON = { xpath: '/html/body/app-root/app-account-container/div/div[2]/app-company-form/div/div/div[2]/form/div/div[4]/button/div'}
	CREATE_YOUR_COMPANY_TEXT = { xpath: '/html/body/app-root/app-account-container/div/div[2]/app-company-form/div/div/div[2]/form/div/div[1]'}
	CREATE_YOUR_PROFILE_TEXT = { xpath: '/html/body/app-root/app-account-container/div/div[2]/app-profile-form/div/div/div[2]/form/div/div[1]]'}
  DASHBOARD_TEXT = { xpath: '/html/body/app-root/app-home/div/div/app-dashboard/app-page-layout/div/div[1]/div'}

#########################-----------Fastcomm Elements-----------#########################
# Initial Bot response #
	WELCOME_FASTCOMM_TEXT = { xpath: "//button[contains(.,'Hi! Welcome to Fastcomm. What are you most interested in today?')]" }
	OUR_SOLUTION_BUTTON = { xpath: "//button[contains(.,'Our Solutions')]" }
	MORE_FASTCOMM_BUTTON = { xpath: "//button[contains(.,'More about Fastcomm')]" }
	MEDIA_BUTTON = { xpath: "//button[contains(.,'Media')]" }
	CREATING_WITH_US_BUTTON = { xpath: "//button[contains(.,'Creating with us')]" }
	CHATTING_TO_US_BUTTON = { xpath: "//button[contains(.,'Chatting to us')]" }

# Our Solution Bot response #
	OUR_SOLUTION_RESPONSE_1 = { xpath: "//*[contains(.,'We have successfully created and')]" }
	OUR_SOLUTION_RESPONSE_2 = { xpath: "//*[contains(.,'implemented various platforms')]" }
	OUR_SOLUTION_RESPONSE_3 = { xpath: "//*[contains(.,'aimed at connecting people, places')]" }
	HI_GURU_BUTTON = { xpath: "//button[contains(.,'hi.guru')]" }
	LATCH_BUTTON = { xpath: "//button[contains(.,'latch')]" }
	HELLOTHING_BUTTON = { xpath: "//button[contains(.,'HelloThing)]" }
end
