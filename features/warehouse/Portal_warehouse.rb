# frozen_string_literal: true

class ElementWarehouse
	WIDGET = { xpath: '//*[@id="higuru-webchat"]/div' }
	LOGO = { xpath: '/html/body/app-root/app-account-container/div/div[1]/img' }
	EMAIL_FIELD = { xpath: '/html/body/app-root/app-account-container/div/div[2]/app-forgot-password-form/div/form/div[1]/input' }
	SEND_RESET_EMAIL = { xpath: '/html/body/app-root/app-account-container/div/div[2]/app-forgot-password-form/div/form/div[3]/button' }
	PASSWORD_FIELD = { css: '.form-group:nth-child(2) > .form-input' }
	PASSWORD_FIELD_1 = { css: '.form-group:nth-child(2) > .form-input' }
	LOGIN_BUTTON = { css: '.btn > div' }
	LOGIN_BUTTON_1 = { css: '.btn > div' }
	BACK_TO_LOGIN = { xpath: '//a[contains(text(),"Back to Login")]' }
	PASSWORD_RESET_REQUEST = { css: ".bqe:nth-child(1)" }
	RESET_PASSWORD = { xpath: '//a[contains(.,"Reset password.")]' }
	NEW_PASSWORD_FIELD = { xpath: '//*[@id="mat-input-0"]' }
	CONFIRM_PASSWORD_FIELD = { xpath: '//*[@id="mat-input-1"]' }
	DONE_BUTTON = { xpath: '/html/body/app-root/app-account-container/div/div[2]/app-password-reset-form/div/form/div/div[1]/button' }
	SIGN_IN = { xpath: '/html/body/div[2]/div[1]/div[4]/ul[1]/li[2]/a' }
	GMAIL_EMAIL_FIELD = { xpath: '//*[@id="identifierId"]' }
	GMAIL_PASSWORD_FIELD = { xpath: '//input[@name="password"]' }
	NEXT_BUTTON = { xpath: '//*[@id="identifierNext"]' }
	PASSWORD_NEXT_BUTTON = { xpath: '//*[@id="passwordNext"]/span/span' }
	HIGURU_BUTTON = { css: 'li:nth-child(2) .higuru-button-bordered' }
	HIGURU_COMPANY_UNIT = { css: '.company-unit-container:nth-child(1) .company-unit-logo' }

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
	AGENT_IMAGE = { xpath: '/html/body/app-root/app-home/app-header/div/div/app-account-user/div[1]/button' }
	I_FORGOT_MY_PASSWORD = { xpath: '//a[contains(text(),"I forgot my Password")]' }
	SUPPORT_AND_FEEDBACK = { xpath: '//button[contains(.,"Support & Feedback")]' }
	HIGURU_WEB_ICON = { xpath: '//div[@id="webchat"]/div/div/img' }
	BILLING_INFO = { xpath: '//*[@id="mat-tab-label-0-2"]/div' }
	COMPANY_NAME = { css: '.company-name' }
	COMPANY_UNIT = { xpath: '//div[@id="sidebar-wrapper"]/div/img' }
	CONVERSATION_HISTORY_TAB = { xpath: '//*[@id="sidebar-wrapper"]/div[2]/ul/li[9]' }
	BOT_TAB = { xpath: '//*[@id="sidebar-wrapper"]/div[2]/ul/li[10]' }
	CONVO_HISTORY = { xpath: '//*[contains(., "Conversation History")]' }
	CONVO = { xpath: '//*[contains(., "Conversations")]' }
	CONVO_SEARCH_FIELD = { id: 'mat-input-1' }
	TEN_SHOULD_NOT_SEE = { xpath: '//*[contains(., "10290")]' }
	ADD_COMPANY_UNIT = { xpath: '/html/body/app-root/app-home/div/div/app-companies-container/div[1]/div[2]' }
	COMPANY_UNIT_INPUT = { xpath: '//*[@id="mat-input-1"]' }
	COMPANY_UNIT_2 = { xpath: '' }
	DASHBOARD = { xpath: '//*[@id="sidebar-wrapper"]/div[2]/ul/li[1]/span[2]/a' }
	CREATE = { xpath: '//*[@id="mat-dialog-0"]/create-company-unit-dialog/div/div[3]/button[2]' }
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
  CHAT_FIELD = { xpath: '//div[@id="webchat"]/div/div/div[3]/div/div/div/div' }
  CONVERSATION_RESOLVED_TEXT = {xpath: "//*[contains(.,'Conversation resolved by bot')]" }

	GET_STARTED_TEXT = { xpath: "//button[contains(.,'Get Started')]" }
	SUPPORT_TEXT = { xpath: "//button[contains(.,'Support')]" }
	PRODUCT_INFO_TEXT = { xpath: "//button[contains(.,'Product Info')]" }
	FEEDBACK_TEXT = { xpath: "//button[contains(.,'Feedback')]" }
	CHAT_WITH_US_TEXT = { xpath: "//button[contains(.,'Chat with us')]" }
	SECOND_BOT_RESPONSE = { xpath: "//*[contains(.,'Hi! Welcome to hi.guru')]" }
	BOT_PLEASURE_RESPONSE = { xpath: "//*[contains(.,'It's my pleasure.')]" }
end
