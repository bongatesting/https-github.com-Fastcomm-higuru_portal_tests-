# frozen_string_literal: true

class ElementWarehouse
	WIDGET = { xpath: '//*[@id="higuru-webchat"]/div' }
	FASTCOMM_WIDGET = { css: '.higuru_higuru-web-icon' }
	FASTCOMM_LOGO = { xpath: "//img[@alt='Linking People Places Things']" }
	LOGO = { xpath: '/html/body/app-root/app-account-container/div/div[1]/img' }
	EMAIL_FIELD = { css: '.form-group:nth-child(1) > .form-input' }
	PASSWORD_FIELD = { css: '.form-group:nth-child(2) > .form-input' }
	LOGIN_BUTTON = { css: '.btn > div' }

	NOT_NOW_NOTIFICATION = { xpath: '/html/body/app-root/app-home/app-notification-bar/div/div[2]/span[1]/button' }
	ALLOW_NOTIFICATION = { xpath: '/html/body/app-root/app-home/app-notification-bar/div/div[2]/span[2]/button' }
	CLOSE_NOTIFICATION = { xpath: '/html/body/app-root/app-home/app-notification-bar/div/div[3]' }
	CLOSE_NOTIFICATION_CONVO_PAGE = { xpath: '/html/body/app-root/app-agent-interface-page/div[1]/app-notification-bar/div/div[3]' }
	CONVERSATION_COUNT_ONE = { xpath: '//*[@id="sidebar-wrapper"]/div[2]/ul/li[2]/div/span' }
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
	BOT_TEXT = { xpath: '//*[@id="mat-tab-label-0-2"][contains(., "Bot")]' }
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
	NO_BUTTON_RESPONSE_1 = { xpath: '//*[contains(.,"It has been great chatting with you.")]' }
	NO_BUTTON_RESPONSE_2 = { xpath: '//*[contains(.,"Have a wonderful day")]' }

  ADD_IMAGE = {id: 'upload-btn'}
	SUPPORT_BUTTON = { css: '.higuru_quick-reply:nth-child(2)' }

	SUPPORT_BOT_RESPONSE = { xpath: '//*[contains(.,"Please give us a short")]' }
	DESCRIPTION_BOT_RESPONSE_1 = { xpath: '//*[contains(.,"Thank you!")]' }
	DESCRIPTION_BOT_RESPONSE_2 = { xpath: '//*[contains(.,"touch shortly.")]' }
  PRODUCT_INFO_BUTTON = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[2]/div[3]/div[2]/button[3]' }
	FEEDBACK_BUTTON = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[2]/div[3]/div[2]/button[4]' }
	CHAT_WITH_US_BUTTON = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[2]/div[3]/div[2]/button[5]' }
  SEND_BUTTON = { css: '.higuru_compose-action-icon path' }
	WIDGET_SEND_BUTTON = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[3]/div[1]/svg/g/rect' }

  CHAT_FIELD = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[3]/div[1]/div/div/div[1]' }
  CONVERSATION_RESOLVED_TEXT = { xpath: '//*[@id="higuru-webchat"][contains(.,"Conversation resolved by agent")]' }

	GET_STARTED_TEXT = { xpath: "//button[contains(.,'Get Started')]" }
	SUPPORT_TEXT = { xpath: "//button[contains(.,'Support')]" }
	PRODUCT_INFO_TEXT = { xpath: "//button[contains(.,'Product Info')]" }
	FEEDBACK_TEXT = { xpath: "//button[contains(.,'Feedback')]" }
	CHAT_WITH_US_TEXT = { xpath: "//button[contains(.,'Chat with us')]" }
	SECOND_BOT_RESPONSE = { xpath: "//*[contains(.,'Hi! Welcome to hi.guru')]" }
	BOT_PLEASURE_RESPONSE = { xpath: "//*[contains(.,'It's my pleasure.')]" }


#########################-----------Fastcomm Elements-----------#########################
# Initial Bot response #
	WELCOME_FASTCOMM_TEXT = { xpath: "//*[contains(.,'Hi! Welcome to Fastcomm. What are you most interested in today?')]" }
	OUR_SOLUTION_BUTTON = { xpath: "//button[contains(.,'Our Solutions')]" }
	MORE_FASTCOMM_BUTTON = { xpath: "//button[contains(.,'More about Fastcomm')]" }
	MEDIA_BUTTON = { xpath: "//button[contains(.,'Media')]" }
	CREATING_WITH_US_BUTTON = { xpath: "//button[contains(.,'Creating with us')]" }
	CHATTING_TO_US_BUTTON = { xpath: "//button[contains(.,'Chatting to us')]" }
	CHAT_TEXT_FIELD = { css: ".higuru_input" }

# Our Solution Bot response #

	OUR_SOLUTION_RESPONSE_1 = { xpath: "//*[contains(.,'We have successfully created and implemented various platforms aimed')]" }
	OUR_SOLUTION_RESPONSE_2 = { xpath: "//*[contains(.,'at connecting people, places and things in a more convenient and')]" }
	OUR_SOLUTION_RESPONSE_3 = { xpath: "//*[contains(.,'flexible way. These platforms allow businesses to')]" }
	OUR_SOLUTION_RESPONSE_4 = { xpath: "//*[contains(.,'focus on their growth and boost productivity by enhancing their')]" }
	OUR_SOLUTION_RESPONSE_5 = { xpath: "//*[contains(.,'existing business processes. Our Platforms are:')]" }

	HI_GURU_BUTTON = { xpath: "//button[contains(.,'hi.guru')]" }
	LATCH_BUTTON = { xpath: "//button[contains(.,'latch')]" }
	HELLOTHING_BUTTON = { xpath: "//button[contains(.,'HelloThing')]" }

# Latch Button Bot response #
	LATCH_RESPONSE_1 = { xpath: "//*[contains(.,'Easily manage your conversations')]" }
	LATCH_RESPONSE_2 = { xpath: "//*[contains(.,'media and documents through a')]" }
	LATCH_RESPONSE_3 = { xpath: "//*[contains(.,'closed, secure and protected')]" }
	LATCH_RESPONSE_4 = { xpath: "//*[contains(.,'intranet. Latch provides a central')]" }
	LATCH_RESPONSE_5 = { xpath: "//*[contains(.,'hub with customised 'WhatsApp'')]" }
	LATCH_URL = { xpath: "//a[contains(.,'https://latch.chat')]" }
	LATCH_SITE_TEXT = { xpath: "//h1[contains(.,'Making collaboration easier using a secure business messenger')]" }
	LATCH_SIGN_IN = { xpath: "//a[contains(.,'Sign In')]" }
	LATCH_YES_RESPONSE_1 = { xpath: "//*[contains(.,'Great! These are the available')]" }
	LATCH_YES_RESPONSE_2 = { xpath: "//*[contains(.,'options. Please select the one you')]" }
	LATCH_YES_RESPONSE_3 = { xpath: "//*[contains(.,'are interested in.')]" }
	ABOUT_FASTCOMM_RESPONSE_1 = { xpath: "//*[contains(.,'At Fastcomm we believe in')]" }
	ABOUT_FASTCOMM_RESPONSE_2 = { xpath: "//*[contains(.,'Innovation Through Technology.')]" }
	ABOUT_FASTCOMM_RESPONSE_3 = { xpath: "//*[contains(.,'We value the unique relationship')]" }
	ABOUT_FASTCOMM_RESPONSE_4 = { xpath: "//*[contains(.,'between technology and people,')]" }
	ABOUT_FASTCOMM_RESPONSE_5 = { xpath: "//*[contains(.,'and strive to expertly enable the')]" }
	ABOUT_FASTCOMM_RESPONSE_6 = { xpath: "//*[contains(.,'linking of people, places and things')]" }
	FASTCOMM_LINK = { xpath: "//a[contains(.,'https://fastcomm.com/about')]" }
	FASTCOMM_TITLE = { xpath: "//h3[contains(.,'Innovation through technology')]" }
	SEND_CHAT_BUTTON = { css: 'rect' }

	CHATTING_TO_US_RESPONSE_1 = { xpath: "//*[contains(.,'We love connecting. A consultant')]" }
	CHATTING_TO_US_RESPONSE_2 = { xpath: "//*[contains(.,'will be with you shortly to discuss')]" }
	CHATTING_TO_US_RESPONSE_3 = { xpath: "//*[contains(.,'anything further you may be')]" }
	CHATTING_TO_US_RESPONSE_4 = { xpath: "//*[contains(.,'interested in.')]" }

	CHATTING_RESPONSE_NOT_AVAILABLE = { xpath: "//*[contains(.,'We love connecting. Our consultants are currently unavailable.')]" }
	CHATTING_RESPONSE_NOT_AVAILABLE_1 = { xpath: "//*[contains(.,'Please leave us your email and they will get back to you.')]" }

	AGENT_RESPONSE = { xpath: "//*[contains(.,'Hi, My name Is BOT, How may I assist you?')]" }
	AGENT_RESOLVE_TEXT = { xpath: "//*[contains(.,'Conversation resolved by agent')]" }
	AGENT_RESOLVE_TEXT_2 = { xpath: "//*[contains(.,'Sure thing. Consider it Resolved...')]" }
	CLIENT_RESOLVE_TEXT = { xpath: "//*[contains(.,'Hi Bot, I am just testing. We may close this query')]" }
	MEDIA_RESPONSE_TEXT = { xpath: "//*[contains(.,'To view some of our media articles follow this link:')]" }
	MEDIA_RESPONSE_LINK = { xpath: "//a[contains(.,'https://fastcomm.com/media')]" }
	MEDIA_URL_TEXT = { xpath: "//h1[contains(.,'Linking people, places & things')]" }
	MEDIA_URL_TEXT_2 = { xpath: "//h2[contains(.,'Enabling businesses to digitally transform through customizable platforms.')]" }
	MEDIA_PLAY_BUTTON = { xpath: '//*[@id="Capa_1"]' }
	YOUTUBE_PLAY_BUTTON = { xpath: '//*[@id="player_uid_264695290_1"]/div[4]/button' }
	YOUTUBE_PLAY_TEXT = { xpath: "//a[contains(.,'Fastcomm Video 2019')]" }
	CLOSE_YOUTUBE_VIDEO = { xpath: '//*[@id="elementor-popup-modal-2908"]/div[2]/i' }
	THREE_LINES = { xpath: '//*[@id="page"]/div[1]/div/div/section/div/div/div/div/div/section/div/div/div[3]/div/div/div/div/div/a/i' }
	HOME_TEXT = { xpath: "//a[contains(.,'Home')]" }
	STORE_TEXT = { xpath: "//a[contains(.,'Store')]" }
	IOT_TEXT = { xpath: "//a[contains(.,'IoT Solutions')]" }
	MEDIA_TEXT = { xpath: "//a[contains(.,'Media')]" }
	COMPANY_TEXT = { xpath: "//a[contains(.,'Company')]" }
	THREE_LINES_CLOSE_BUTTON = { xpath: '//*[@id="elementor-popup-modal-5988"]/div/div[4]/i' }
	MEDIA_LOGO = { id: "page" }
	SHOPPING_CART = { xpath: '//*[@id="elementor-menu-cart__toggle_button"]/span[2]/i' }
	CREATING_RESPONSE = { xpath: "//*[contains(.,'At Fastcomm we recognise that not every business is the same and we')]" }
	CREATING_RESPONSE_2 = { xpath: "//*[contains(.,'offer various ways for successful applicants to partner with us.')]" }
	CREATING_RESPONSE_3 = { xpath: "//*[contains(.,'What is your email address?')]" }
	HOW_MAY_WE_ASSIST_TEXT = { xpath: "//*[contains(.,'Hi Werner how may we assist you today?')]" }
	EMAIL_RESPONSE = { xpath: "//*[contains(.,'Our consultants will be contacting you via your email as soon as possible. Thank you for stopping by and have a nice day. ')]" }
	INBOUND_CHAT = { xpath: '//*[@id="mat-tab-content-0-0"]/div/div/app-room/div/div[2]/div[1]/span[1]' }
	BOT_CHAT = { xpath: '//*[@id="mat-tab-content-0-2"]/div/div/app-room/div/div[2]/div[1]/span[1]' }
	CLAIM_BUTTON = { xpath: '/html/body/app-root/app-agent-interface-page/div[2]/app-chat/app-claim-footer-block/div/button' }
	CONVO_CLAIMED_TEXT = { xpath: "//*[contains(.,'Conversation successfully claimed')]" }

	INBOUND_CHAT_FIELD = { xpath: '/html/body/app-root/app-agent-interface-page/div[2]/app-chat/app-chat-footer-block/app-agent-chatbox/div[1]' }
	INBOUND_CHAT_SEND_BUTTON = { xpath: '/html/body/app-root/app-agent-interface-page/div[2]/app-chat/app-chat-footer-block/app-agent-chatbox/div[2]/img[1]' }
	RESOLVE_BUTTON = { xpath: '/html/body/app-root/app-agent-interface-page/div[2]/app-chat/app-chat-header/div[2]/button/img' }
	RESOLVE_TEXT = { xpath: '//*[@id="cdk-overlay-1"]/div/div/button[3]' }
	RESOLVED_TEXT = { xpath: '//*[contains(.,"Conversation successfully resolved")]' }

end
