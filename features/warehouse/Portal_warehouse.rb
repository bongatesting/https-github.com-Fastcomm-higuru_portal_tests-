# frozen_string_literal: true

class ElementWarehouse
	WIDGET = { xpath: '//*[@id="higuru-webchat"]/div' }
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
	CONVO_HISTORY = { xpath: '/html/body/app-root/app-home/div/div/app-history/div[1]/div[1]' }
	BOT_TAB = { xpath: '//*[@id="sidebar-wrapper"]/div[2]/ul/li[10]' }
	CONVO = { xpath: '/html/body/app-root/app-home/div/div/app-history/div[2]/h6/b' }
	CONVO_SEARCH_FIELD = { xpath: '//*[@id="mat-input-29"]' }
	TEN_SHOULD_NOT_SEE = { xpath: '/html/body/app-root/app-home/div/div/app-history/div[2]/div/div[2]/div/div[2]/div[2]/div[1]' }
	GET_STARTED_REPLY = { xpath: '//*[@id="higuru-webchat"]/1]/div[2]/div[3]/div[2]/button[1]' }
	SUPPORT_REPLY = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[2]/div[3]/div[2]/button[2]' }
	PRODUCT_INFO_REPLY = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[2]/div[3]/div[2]/button[3]' }
	FEEDBACK_REPLY = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[2]/div[3]/div[2]/button[4]' }
	CHAT_WITH_US_REPLY = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[2]/div[3]/div[2]/button[5]' }
	ATTACH_FILE_BUTTON = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[3]/div[2]/label/svg/g' }
	CHAT_CLOSE_BUTTON = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[1]/div[1]/svg/path'}
	IN_CHAT_URL = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[2]/div[3]/div[1]/div/div/div[1]/a'}
	GET_STARTED_BUTTON = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[2]/div[3]/div[2]/button[1]'}
	YES_BUTTON = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[2]/div[5]/div[2]/button[1]'}
	NO_BUTTON = { css: '.higuru_quick-reply:nth-child(1)'}
	ADD_IMAGE = {id: 'upload-btn'}
	SEND_BUTTON = {xpath: '//*[@id="doc-upload-overlay"]/div[4]/div[1]/img'}
	CONVERSATION_RESOLVED = {xpath: "//*[contains(.,'Conversation resolved by bot')]" }
end
