# frozen_string_literal: true

class ElementWarehouse
	WIDGET = { xpath: '//*[@id="higuru-webchat"]/div/div/img' }
	LOGO = { xpath: '/html/body/app-root/app-account-container/div/div[1]/img' }
	EMAIL_FIELD = { css: '.form-group:nth-child(1) > .form-input' }
	PASSWORD_FIELD = { css: '.form-group:nth-child(2) > .form-input' }
	LOGIN_BUTTON = { css: '.btn > div' }
	ALLOW_NOTIFICATION = { xpath: '/html/body/app-root/app-home/app-notification-bar/div/div[2]/span[2]/button' }
	# ALLOW_NATIVE_NOTIFICATION = { xpath: "//span[contains(.,'Allow')]" }
	CLOSE_NOTIFICATION = { xpath: '/html/body/app-root/app-home/app-notification-bar/div/div[3]' }
	CLOSE_NOTIFICATION_CONVO_PAGE = { xpath: '/html/body/app-root/app-agent-interface-page/div[1]/app-notification-bar/div/div[3]' }
	CONVERSATIONS_TAB = { xpath: '//*[@id="sidebar-wrapper"]/div[2]/ul/li[2]/span[1]/img' }
	INBOUND_TAB = { xpath: "//span[contains(.,'Inbound')]" }
	OUTBOUND_TAB = { xpath: "//span[contains(.,'Outbound')]" }
	MAIN_MENU = { css: '.logo-small' }
	BILLING = { xpath: '/html/body/app-root/app-home/div/div/app-billing-container/div/div[1]' }
	AGENT_IMAGE = { css: '.agent-image' }
	PAYMENT_METHOD = { xpath: '//div[@id="cdk-overlay-0"]/div/div/div/div[3]/div/span[2]/span' }
	COMPANY_NAME = { css: '.company-name' }
	COMPANY_UNIT = { css: '.image-rectangle > img' }
	CONVERSATION_HISTORY_TAB = { xpath: '//*[@id="sidebar-wrapper"]/div[2]/ul/li[9]' }
	CONVO_HISTORY = { xpath: '//*[contains(., "Conversation History")]' }
	CONVO = { xpath: '//*[contains(., "Conversations")]' }
	CONVO_SEARCH_FIELD = { id: 'mat-input-1' }
	TEN_SHOULD_NOT_SEE = { xpath: '//*[contains(., "10290")]' }
	GET_STARTED_REPLY = { xpath: '//*[@id="higuru-webchat"]/1]/div[2]/div[3]/div[2]/button[1]' }
	SUPPORT_REPLY = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[2]/div[3]/div[2]/button[2]' }
	PRODUCT_INFO_REPLY = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[2]/div[3]/div[2]/button[3]' }
	FEEDBACK_REPLY = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[2]/div[3]/div[2]/button[4]' }
	CHAT_WITH_US_REPLY = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[2]/div[3]/div[2]/button[5]' }
	ATTACH_FILE_BUTTON = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[3]/div[2]/label/svg/g' }
	CHAT_CLOSE_BUTTON = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[1]/div[1]/svg/path' }
	IN_CHAT_URL = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[2]/div[3]/div[1]/div/div/div[1]/a' }
	GET_STARTED_BUTTON = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[2]/div[3]/div[2]/button[1]' }
	YES_BUTTON = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[2]/div[5]/div[2]/button[1]' }
	NO_BUTTON = { xpath: '//button[contains(.,"No")]' }
	SUPPORT_BUTTON = { css: '.higuru_quick-reply:nth-child(2)' }
	SUPPORT_BOT_RESPONSE = { xpath: '//*[contains(.,"Please give us a short")]' }
	DESCRIPTION_BOT_RESPONSE_1 = { xpath: '//*[contains(.,"Thank you!")]' }
	DESCRIPTION_BOT_RESPONSE_2 = { xpath: '//*[contains(.,"touch shortly.")]' }
  PRODUCT_INFO_BUTTON = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[2]/div[3]/div[2]/button[3]' }
	FEEDBACK_BUTTON = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[2]/div[3]/div[2]/button[4]' }
	CHAT_WITH_US_BUTTON = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[2]/div[3]/div[2]/button[5]' }
  SEND_BUTTON = { css: '.higuru_compose-action-icon path' }
  CHAT_FIELD = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[3]/div[1]/div/div/div[1]' }
end