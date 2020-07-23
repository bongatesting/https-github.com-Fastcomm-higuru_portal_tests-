# frozen_string_literal: true

class ElementWarehouse
	#########################-----------HiGuru Elements-----------#########################
	WIDGET = { xpath: '//*[@id="higuru-webchat"]/div' }
	FASTCOMM_WIDGET = { css: '.higuru_higuru-web-icon' }
	FASTCOMM_LOGO = { xpath: "//img[@alt='Linking People Places Things']" }
	LOGO = { xpath: '/html/body/app-root/app-account-container/div/div[1]/img' }
	FORGOT_EMAIL_FIELD = { xpath: '/html/body/app-root/app-account-container/div/div[2]/app-forgot-password-form/div/form/div[1]/input' }
	EMAIL_FIELD = { xpath: '//*[@id="email"]/input' }
	SEND_RESET_EMAIL = { xpath: '/html/body/app-root/app-account-container/div/div[2]/app-forgot-password-form/div/form/div[3]/button' }
	PASSWORD_FIELD = { xpath: '//*[@id="password"]/input' }
	PASSWORD_FIELD_1 = { css: '.form-group:nth-child(2) > .form-input' }
	LOGIN_BUTTON = { xpath: '//*[@id="login"]' }
	LOGIN_ACCOUNT_SELECT = { xpath: "//ion-button[contains(.,'Go')]"}
	LOGIN_CU_SELECT = { xpath: '//app-company-unit-item/ion-item/ion-button' }
	BRKLYN = { xpath: '/html/body/app-root/ion-app/ion-router-outlet/app-login-container/ion-content/ion-router-outlet/app-company-unit-selection-container/ion-grid/ion-row/ion-card/ion-card-content/ion-content/ion-list/app-company-unit-item[1]/ion-item/ion-button' }
	SWITCH_TO_TEST = { xpath: '//*[@id="cdk-overlay-0"]/div/div/div/div/div[3]/button' }
	SWITCH_TO_BRKLYN = { xpath: '' }
	TWITTER_USERNAME = { xpath: '//*[@id="react-root"]/div/div/div[2]/main/div/div/form/div/div[1]/label/div/div[2]/div/input' }
	TWITTER_SIGN_IN_BUTTON = { xpath: '//*[@id="react-root"]/div/div/div[2]/main/div/div/form/div/div[3]/div/div/span/span' }
	TWEET_FIELD = { xpath: '//*[@id="react-root"]/div/div/div[2]/main/div/div/div/div/div/div[2]/div/div[2]/div[1]/div/div/div/div[2]/div[1]/div/div/div/div/div/div/div/div/div/div[1]/div/div/div/div[2]/div/div/div/div' }
	TWEET_BUTTON = { xpath: '//*[@id="react-root"]/div/div/div[2]/main/div/div/div/div/div/div[2]/div/div[2]/div[1]/div/div/div/div[2]/div[2]/div/div/div[2]/div[3]/div/span/span' }
	MORE_BUTTON = { xpath: '//*[@id="react-root"]/div/div/div[2]/header/div/div/div/div/div[2]/nav/div/div/div[2]/span' }
	LOG_OUT_TWITTER = { xpath: '//*[@id="react-root"]/div/div/div[1]/div[2]/div/div[2]/div[3]/div/div/div/div/div[12]/a/div/div/span' }
	CONFIRM_LOGOUT_TWITTER = { xpath: '//*[@id="react-root"]/div/div/div[1]/div[2]/div/div/div/div[2]/div[2]/div[3]/div[2]/div/span/span' }
	TWITTER_PASSWORD = { xpath: '//*[@id="react-root"]/div/div/div[2]/main/div/div/form/div/div[2]/label/div/div[2]/div/input' }
	COMPANY_UNITS = { xpath: '/html/body/app-root/ion-app/ion-router-outlet/app-agent-interface-page/app-header-main/ion-header/ion-toolbar/app-account-company-unit/div/button/img' }
	I_AGREE_BUTTON = { css: '.radio-container > .ng-dirty' }
	NEXT_BUTTON_1 = {  xpath: "/html/body/app-root/app-account-container/div/div[2]/app-register-form/div/div/div[2]/form/div/button" }
	REGISTER_NEXT_BUTTON_2 = { xpath: '//*[@id="goToCompanyDetails"]' }
	TWITTER_USERNAME_1 = { xpath: '//*[@id="react-root"]/div/div/div[2]/main/div/div/form/div/div[1]/label/div/div[2]/div/input' }
	TWITTER_PASSWORD_1 = { xpath: '//*[@id="react-root"]/div/div/div[2]/main/div/div/form/div/div[2]/label/div/div[2]/div/input' }
	TWITTER_SIGN_IN_BUTTON_1 = { xpath: '//*[@id="react-root"]/div/div/div[2]/main/div/div/form/div/div[3]/div/div/span/span' }
	REPLY_TO_TWEET_ONE = { xpath: '//*[@id="react-root"]/div/div/div[2]/main/div/div/div/div/div/div[2]/div/div/div[2]/section/div/div/div/div[1]/div/div/div/article/div/div[2]/div[2]/div[2]/div[3]/div[1]/div/div/div/svg' }
	TWEET_BUTTON_1 = { xpath: '' }
	TWEET_ONE = { xpath: '//*[@id="react-root"]/div/div/div[2]/main/div/div/div/div/div/div[2]/div/div/div[2]/section/div/div/div/div[1]/div/div/div/article/div/div[2]/div[2]/div[2]/div[1]/div/span' }
	SELECT_TWITTER_USER = { xpath: '//*[@id="typeaheadDropdown-6"]/div[3]/div[1]/li/div/div[1]/div/div[2]' }
	TWITTER_SEARCH_BUTTON = { xpath: '//*[@id="react-root"]/div/div/div[2]/main/div/div/div/div[2]/div/div[2]/div/div/div/div[1]/div/div/div/form/div[1]/div/div/div[2]/input' }
	ALLOW_NOTIFICATION = { xpath: '/html/body/app-root/app-home/app-header/app-notification-bar/div/div[2]/span[2]/button' }
	QA_NOT_NOW_NOTIFICATION = { xpath: '/html/body/app-root/ion-app/ion-router-outlet/app-agent-interface-page/app-header-main/ion-header/app-notification-bar/div/div[2]/span[3]/button' }
	NOT_NOW_NOTIFICATION = { xpath: '/html/body/app-root/ion-app/ion-router-outlet/app-home-container/app-header-main/ion-header/app-notification-bar/div/div[2]/span[3]/button' }
	NOT_NOW_NOTIFICATION_2 = { xpath: '/html/body/app-root/app-home/app-notification-bar/div/div[2]/span[1]/button' }
	TEST_FASTCOMM = { xpath: '//*[@id="company-unit-selection-overlay"]/div[3]/div[1]/div[2]' }
	TEST_HIGURU = { xpath: '//*[@id="company-unit-selection-overlay"]/div[3]/div[2]/div[2]' }
	LOGIN_BUTTON_1 = { css: '.btn > div' }
	BACK_TO_LOGIN = { xpath: '//a[contains(text(),"Back to Login")]' }
	PASSWORD_RESET_REQUEST = { css: ".bqe:nth-child(1)" }
	RESET_PASSWORD = { xpath: '//a[contains(.,"Reset password.")]' }
	NEW_PASSWORD_FIELD = { xpath: "//input[@name='ion-input-0']" }
	CONFIRM_PASSWORD_FIELD = { xpath: "//ion-input[@id='verifyPassword']/input" }
	PROFILE_BUTTON = { css: '.agent-image' }
	SIGN_OUT = { xpath: "//button[contains(.,'Log Out')]" }
	SIGN_IN = { xpath: '/html/body/div[2]/div[1]/div[4]/ul[1]/li[2]/a' }
	GMAIL_EMAIL_FIELD = { xpath: '//*[@id="identifierId"]' }
	OUTLOOK_EMAIL_FIELD = { xpath: '//*[@id="i0116"]' }
	OUTLOOK_EMAIL_FIELD_2 = { xpath: '/html/body/div/form[1]/div/div/div[1]/div[3]/div/div/div/div[2]/div[2]/div/input[1]' }
  SKIP_FOR_NOW_TEXT = { xpath: '/html/body/div/form[1]/div/div/div[1]/div[3]/div/div[2]/div/div[3]/a' }
	OUTLOOK_NEXT_BUTTON = { xpath: '//*[@id="idSIButton9"]' }
	OUTLOOK_NEXT_BUTTON_2 = { xpath: '//*[@id="idSubmit_ProofUp_Redirect"]' }
	OUTLOOK_PASSWORD_FIELD = { xpath: '//*[@id="i0118"]' }
	OUTLOOK_SIGN_IN_BUTTON = { xpath: '//*[@id="idSIButton9"]' }
	OUTLOOK_STAY_SIGNED_IN_NO_BUTTON = { xpath: '//*[@id="idBtn_Back"]' }
	OUTLOOK_ICON = { xpath: '//*[@id="ShellMail_link"]/span/ohp-icon-font/span' }
	GMAIL_PASSWORD_FIELD = { xpath: '//input[@name="password"]' }
	NEW_LOGIN_EMAIL_FIELD = { xpath: '' }
	MANAGE_ROUTING_SETTINGS = { xpath: '//*[@id="home-content"]/app-company-unit-info-container/ion-content/ion-slides/div/ion-slide[2]/app-company-unit-settings/ion-content/ion-list/ion-item[1]/ion-button' }
	ADD_TAG_1 = { xpath: '//*[@id="companyUnitSupportTags"]/div/app-company-unit-support-tag/ion-content/ion-item-group/ion-input/input' }
	CLOSE = { xpath: '//*[@id="companyUnitSupportTags"]/div/app-company-unit-support-tag/ion-footer/ion-toolbar/ion-buttons/ion-button' }
	ADD_TAG_2 = { xpath: '//*[@id="companyUnitSupportTags"]/div/app-company-unit-support-tag/ion-content/ion-item-group/ion-input/input' }
	TEAMS_BUTTON_1 = { xpath: '//*[@id="TeamUpdateComponent"]/div/app-team-update/ion-content/ion-item-group/form/ion-item-group[1]/ion-item/ion-input/input' }
	TEAM_1 = { xpath: '//*[@id="teamsNav"]/app-teams/ion-content/ion-slides/div/ion-slide[1]/ion-list/app-team-item[1]/ion-nav-link/ion-card/ion-title' }
	TEAM_1_EDIT_BUTTON = { xpath: '//*[@id="teamsNav"]/app-team-details/app-header/ion-header/ion-toolbar/ion-buttons[2]/ion-button[1]' }
	TYPE_ROUTING_TAG_1 = { xpath: '//*[@id="TeamUpdateComponent"]/div/app-team-update/ion-content/ion-item-group/form/ion-item-group[1]/ion-item/ion-input/input' }
	SELECT_ROUTING_TAG_1 = { xpath: '//*[@id="assignWithChips"]/div/app-assign-with-chips/ion-content/ion-list/ion-item-group/div/ion-item/ion-checkbox' }
	SEARCH_ROUTING_TAG = { xpath: '//*[@id="assignWithChips"]/div/app-assign-with-chips/ion-content/ion-item/ion-searchbar/div/input' }
	SAVE_ROUTING_TAG = { xpath: '//*[@id="assignWithChips"]/div/app-assign-with-chips/ion-footer/ion-toolbar/ion-buttons/ion-button[2]' }
	UPDATE_TEAM_BUTTON = { xpath: '//*[@id="TeamUpdateComponent"]/div/app-team-update/ion-footer/ion-toolbar/ion-buttons/ion-button[2]' }
	TEAM_2 = { xpath: '//*[@id="teamsNav"]/app-teams/ion-content/ion-slides/div/ion-slide[1]/ion-list/app-team-item[2]/ion-nav-link/ion-card/ion-avatar/img' }
	TEAM_2_EDIT_BUTTON = { xpath: '//*[@id="teamsNav"]/app-team-details/app-header/ion-header/ion-toolbar/ion-buttons[2]/ion-button[1]' }
	TYPE_ROUTING_TAG_2 = { xpath: '//*[@id="TeamUpdateComponent"]/div/app-team-update/ion-content/ion-item-group/form/ion-item-group[1]/ion-item/ion-input/input' }
	SELECT_ROUTING_TAG_2 = { xpath: '//*[@id="assignWithChips"]/div/app-assign-with-chips/ion-content/ion-list/ion-item-group/div/ion-item/ion-checkbox' }
	UPDATE_BUTTON_2 = { xpath: '//*[@id="assignWithChips"]/div/app-assign-with-chips/ion-footer/ion-toolbar/ion-buttons/ion-button[2]' }
	WEB_MESSAGE_CONVERSATION = { xpath: '' }
	QA_WEB_WIDGET = { xpath: '//*[@id="higuru-webchat"]/div/div/div/img' }
	QA_WEB_WIDGET_CHAT_FIELD = { xpath: '//*[@id="higuru-webchat"]/div/div/div[1]/div[3]/div[1]/div/div/div[1]' }
	QA_INBOUND_TAB = { xpath: '/html/body/app-root/ion-app/ion-router-outlet/app-agent-interface-page/ion-content/ion-split-pane/ion-menu/app-rooms-container/app-header/ion-header/ion-toolbar[2]/ion-segment/ion-segment-button[1]' }
	TRANSFER_BUTTON = { xpath: '' }
	QA_TEST_BOT = { xpath: '//*[@id="home-content"]/app-company-unit-info-container/ion-content/ion-slides/div/ion-slide[2]/app-company-unit-settings/ion-content/ion-list/app-company-unit-welcome-assistant/ion-item-group/ion-item[1]/ion-card/ion-avatar/img' }
	CENTANE_TAG = { xpath: '' }
	CONVERSATION_HISTORY = { xpath: '' }
	OPEN_CONVERSATION = { xpath: '' }
	NEW_LOGIN_PASSWORD= { xpath: '' }
	PASSWORD_NEXT_BUTTON = { xpath: '//*[@id="passwordNext"]/span/span' }
	NEW_PASSWORD_DONE_BUTTON = { xpath: "//ion-button[@id='resetPassword']" }
	HIGURU_BUTTON = { css: 'li:nth-child(2) .higuru-button-bordered' }
	HIGURU_COMPANY_UNIT = { xpath: '/html/body/app-root/ion-app/ion-router-outlet/app-login-container/ion-content/ion-router-outlet/app-companies-container/ion-grid/ion-row/ion-card/ion-card-content/ion-content/ion-list/app-company-item[2]/ion-item/ion-button' }
	COMPANY_UNIT_SETTINGS = { xpath: '/html/body/app-root/ion-app/ion-router-outlet/app-home-container/ion-content/ion-split-pane/ion-menu/app-main-menu/ion-footer/ion-toolbar/ion-item/ion-label' }
	COMPANY_UNIT_SETTINGS_2 = { xpath: '/html/body/app-root/app-home/div/div/app-side-menu/div[2]/ul' }
	SETTINGS = { xpath: '//*[@id="home-content"]/app-company-unit-info-container/app-header/ion-header/ion-toolbar[2]/ion-segment/ion-segment-button[2]' }
	CONVERSATION_RESOLVE_SLIDER = { xpath: '//*[@id="mat-tab-content-0-1"]/div/app-company-unit-settings/div/div[2]/div[6]/div[2]/div[2]/div/mat-slider/div' }
	CLOSE_NOTIFICATION = { xpath: '/html/body/app-root/app-home/app-notification-bar/div/div[3]' }
	CLOSE_NOTIFICATION_2 = { xpath: '/html/body/app-root/app-home/app-header-main/app-notification-bar/div/div[2]/span[3]/button' }
	CLOSE_NOTIFICATION_CONVO_PAGE = { xpath: '/html/body/app-root/app-agent-interface-page/div[1]/app-notification-bar/div/div[3]' }
	CONVERSATION_COUNT_ONE = { xpath: '//*[@id="sidebar-wrapper"]/div[2]/ul/li[2]/div/span' }
	CONVERSATIONS_TAB = { xpath: '/html/body/app-root/ion-app/ion-router-outlet/app-home-container/ion-content/ion-split-pane/ion-menu/app-main-menu/ion-content/ion-list/ion-item[2]/ion-label' }
	CONVO_NAVIGATION_BUTTON = { xpath: '/html/body/app-root/ion-app/ion-router-outlet/app-agent-interface-page/app-header-main/ion-header/ion-toolbar/ion-avatar[2]/img' }
	INBOUND_TAB = { xpath: "//span[contains(.,'Inbound')]" }
	OUTBOUND_TAB = { xpath: "//span[contains(.,'Outbound')]" }
	PUBLIC_TAB = { xpath: "/html/body/app-root/ion-app/ion-router-outlet/app-agent-interface-page/ion-content/ion-split-pane/ion-menu/app-rooms-container/app-header/ion-header/ion-toolbar[2]/ion-segment/ion-segment-button[4]" }
	PUBLIC_CHAT = { xpath: "/html/body/app-root/ion-app/ion-router-outlet/app-agent-interface-page/ion-content/ion-split-pane/ion-menu/app-rooms-container/ion-content/ion-slides/div/ion-slide[4]/ion-list/app-room-item[1]/ion-item/ion-avatar" }
	MAIN_MENU = { css: '.logo-small' }
	STATS_TAB = { xpath: '//*[@id="sidebar-wrapper"]/div[2]/ul/li[3]' }
	CHANNELS_TAB = { xpath: "//ion-label[contains(.,'Channels')]" }
	ADD_CHANNEL_BUTTON = { xpath: '//*[@id="channelsNav"]/app-channels-container/app-header/ion-header/ion-toolbar[1]/ion-buttons/ion-nav-link/ion-button' }
	TWITTER_CHANNEL = {xpath: '//*[@id="channelsNav"]/app-channel-select/ion-content/ion-list/ion-item-group[2]/app-platform-item[2]/ion-nav-link/ion-card/ion-avatar/img'}
	CHANNEL_DROP_DOWN = {xpath: "//ion-nav[@id='channelsNav']/app-channels-container/ion-content/ion-slides/div/ion-slide/ion-list/app-channel-item[4]/ion-item/ion-button"}
	CHANNEL_DROP_DOWN_2 = {xpath: "//ion-nav[@id='channelsNav']/app-channels-container/ion-content/ion-slides/div/ion-slide/ion-list/app-channel-item[3]/ion-item/ion-button"}
	CHANNEL_REAUTHORISE = {xpath: "//ion-item[contains(.,'Reauthorise Channel')]"}
	ADD_TWITTER_CHANNEL_BUTTON = {xpath: '//*[@id="channelsNav"]/app-platform-details/ion-content/ion-list/ion-item/ion-label/ion-button'}
	CHANNEL_OPTIONS = {xpath: '//*[@id="channelsNav"]/app-channels-container/ion-content/ion-slides/div/ion-slide[1]/ion-list/app-channel-item/ion-item/ion-button'}
	DELETE_CHANNEL = {xpath: '//*[@id="ion-overlay-3"]/div/div[2]/app-list-popover/ion-list/ion-item[2]'}
  CONFIRM_DELETE_BUTTON = {xpath: '//*[@id="ion-overlay-4"]/div/div[3]/button[2]'}
	CONFIRM_BUTTON = {xpath: '//*[@id="premiumChannelModal"]/div/app-premium-channel/ion-footer/ion-toolbar/ion-buttons/ion-button[2]'}
	TWITTER_EMAIL_INPUT = {xpath: '//*[@id="username_or_email"]'}
	TWITTER_PASSWORD_INPUT = {xpath: '//*[@id="password"]'}
	AUTHORIZE_APP_BUTTON = {xpath: '//*[@id="allow"]'}
	ADD_BUTTON = {xpath: '//*[@id="platformPermissionModal"]/div/app-platform-permissions/ion-footer/ion-toolbar/ion-buttons/ion-button[2]'}
	TEAMS_TAB = { xpath: '/html/body/app-root/ion-app/ion-router-outlet/app-home-container/ion-content/ion-split-pane/ion-menu/app-main-menu/ion-content/ion-list/ion-item[5]/ion-label' }
	PEOPLE_TAB = { xpath: '/html/body/app-root/ion-app/ion-router-outlet/app-home-container/ion-content/ion-split-pane/ion-menu/app-main-menu/ion-content/ion-list/ion-item[6]/ion-label' }
	DOCUMENT_LIBRARY_TAB = { xpath: '//*[@id="sidebar-wrapper"]/div[2]/ul/li[7]' }
	ADD_DOCUMENT_BUTTON = { css: '.title-button' }
	ADD_ATTACHMENT = { css: '.title-button' }
	UPLOAD_BUTTON = { xpath: '//*[@id="upload-btn"]' }
	UPLOAD_ICON = { xpath: '//*[@id="doc-upload-overlay"]/div[4]/div[1]/img' }
	FAQ_TAB = { xpath: '//*[@id="sidebar-wrapper"]/div[2]/ul/li[8]/span[2]/a' }
	BILLING = { xpath: '/html/body/app-root/app-home/div/div/app-billing-container/div/div[1]' }
	AGENT_IMAGE_CONVERSATION_VIEW = { xpath: '/html/body/app-root/ion-app/ion-router-outlet/app-agent-interface-page/app-header-main/ion-header/ion-toolbar/app-account-user/div/button/img[1]' }
	AGENT_IMAGE = { xpath: '/html/body/app-root/ion-app/ion-router-outlet/app-home-container/app-header-main/ion-header/ion-toolbar/app-account-user/div/button/img[1]' }
	I_FORGOT_MY_PASSWORD = { xpath: '//a[contains(text(),"I forgot my Password")]' }
	SUPPORT_AND_FEEDBACK = { xpath: '//button[contains(.,"Support & Feedback")]' }
	HIGURU_WEB_ICON = { xpath: '//div[@id="webchat"]/div/div/img' }
	BILLING_INFO = { xpath: '//*[@id="mat-tab-label-0-2"]/div' }
	COMPANY_NAME = { css: '.company-name' }
	COMPANY_UNIT = {xpath: "//div[@id='sidebar-wrapper']/div/div/span" }
	COMPANY_UNIT_SElECT = { xpath: '//app-company-unit/div' }
	GO_BUTTON_COMPANY_UNIT_SELECT_ON_LOGIN = { css: 'li:nth-child(1) .higuru-button-bordered' }
	CONVO_EXPIRY_BAR = { xpath: '//*[@id="mat-tab-content-6-1"]/div/app-company-unit-settings/div/div[2]/div[6]/div[2]/div[2]/div/mat-slider/div/div[3]/div[3]' }
	NEW_COMPANY_UNIT = { xpath: '//*[@id="company-unit-selection-overlay"]/div[3]/div/div[1]/img' }
	CONVERSATION_HISTORY_TAB = { xpath: '//*[@id="sidebar-wrapper"]/div[2]/ul/li[9]' }
	QA_BOT_VIEW = { xpath: '/html/body/app-root/ion-app/ion-router-outlet/app-home-container/ion-content/ion-split-pane/ion-menu/app-main-menu/ion-content/ion-list/ion-item[10]/ion-label' }
	ADD_BOT = { xpath: '//*[@id="botsNav"]/app-bots-container/app-header/ion-header/ion-toolbar[1]/ion-buttons/ion-button' }
	BOT_NAME_FIELD = { xpath: '//*[@id="name"]/input' }
	BOT_OVERVIEW_FIELD = { xpath: '//*[@id="description"]/textarea' }
	BOT_PLATFORM = { xpath: '//*[@id="botIntegrationType"]/input' }
	HIGURU_BOT = { xpath: '//*[@id="ion-overlay-2"]/div/div[2]/app-list-popover/ion-list/ion-item[1]' }
	REQUEST_BUTTON = { xpath: '//*[@id="createBotModal"]/div/app-bot-create/ion-footer/ion-toolbar/ion-buttons/ion-button[2]' }
	HIGURU_USERNAME_FIELD = { xpath: '//*[@id="username"]/input' }
	HIGURU_PASSWORD_FIELD = { xpath: '//*[@id="password"]/input' }
	LINK_BUTTON = { xpath: '//*[@id="createBotModal"]/div/app-bot-create/ion-content/ion-item-group/form/ion-item[7]/ion-button' }
	HIGURU_WORKSPACE_FIELD = { xpath: '' }
	LEGAL_BOT = { xpath: '//*[@id="ion-overlay-3"]/div/div[2]/app-list-popover/ion-list/ion-item[2]/ion-label' }
	SELECT_BOT = { xpath: '//*[@id="botObject"]/input' }
	ADD_LEGAL_BOT_BUTTON = { xpath: '//*[@id="createBotModal"]/div/app-bot-create/ion-footer/ion-toolbar/ion-buttons/ion-button[2]' }
	INACTIVE_BOT_TAB = { xpath: '//*[@id="botsNav"]/app-bots-container/app-header/ion-header/ion-toolbar[2]/ion-segment/ion-segment-button[2]' }
	ACTIVE_TEST_BOT = { xpath: '//*[@id="botsNav"]/app-bots-container/ion-content/ion-slides/div/ion-slide[1]/ion-list/app-bot-item/ion-nav-link/ion-card/ion-avatar/img' }
	INACTIVE_TEST_BOT = { xpath: '//*[@id="botsNav"]/app-bots-container/ion-content/ion-slides/div/ion-slide[2]/ion-list/app-bot-item/ion-nav-link/ion-card' }
	BOT_MENU_BUTTON = { xpath: '//*[@id="botsNav"]/app-bot-details/app-header/ion-header/ion-toolbar/ion-buttons[2]/ion-button[2]' }
	ACTIVATE_BOT_BUTTON = { xpath: '//*[@id="ion-overlay-5"]/div/div[2]/app-list-popover/ion-list/ion-item[1]/ion-label' }
	DEACTIVATE_BOT_BUTTON = { xpath: '//*[@id="ion-overlay-16"]/div/div[2]/app-list-popover/ion-list/ion-item[1]/ion-label' }
	DELETE_BOT_BUTTON = { xpath: '//*[@id="ion-overlay-18"]/div/div[2]/app-list-popover/ion-list/ion-item[2]/ion-label' }
	CONFIRM_DELETE_BOT_BUTTON = { xpath: '//*[@id="ion-overlay-6"]/div/div[3]/button[2]/span' }
	WELCOME_ASSISTANT_BUTTON = { xpath: '//*[@id="ion-tg-1-lbl"]/ion-label/ion-text' }
	ACTIVATE_TEST_BOT = { xpath: '//*[@id="companyUnitBotSelect"]/div/div[2]/app-company-unit-bot-select/ion-content/ion-item[2]/div/ion-card/ion-avatar/img' }
	QA_BOT_TAB = { xpath: '/html/body/app-root/ion-app/ion-router-outlet/app-agent-interface-page/ion-content/ion-split-pane/ion-menu/app-rooms-container/app-header/ion-header/ion-toolbar[2]/ion-segment/ion-segment-button[3]' }
	PUBLIC_BOT_TAB = { xpath: '/html/body/app-root/ion-app/ion-router-outlet/app-agent-interface-page/ion-content/ion-split-pane/ion-menu/app-rooms-container/app-header/ion-header/ion-toolbar[2]/ion-segment/ion-segment-button[4]' }
	REMOVE_QA_TEST_BOT = { xpath: '//*[@id="ion-overlay-10"]/div/div[2]/app-list-popover/ion-list/ion-item[1]/ion-label' }
	SAVE_ASSIGN_CONVERSATION_TOPICS_TAGS = { xpath: '//*[@id="assignSupportQueryTopicTags"]/div/app-assign-support-query-topic-tags/ion-footer/ion-toolbar/ion-buttons/ion-button[2]' }
	QA_INSTANT_RESOLVE = { xpath: '' }
	QA_SELECT_BOT_CHAT = { xpath: '/html/body/app-root/ion-app/ion-router-outlet/app-agent-interface-page/ion-content/ion-split-pane/ion-menu/app-rooms-container/ion-content/ion-slides/div/ion-slide[3]/ion-list/app-room-item[1]/ion-item/ion-avatar/img[1]' }
	QA_CLAIM_BOT_CHAT_BUTTON = { xpath: '//*[@id="agent-content"]/app-chat/app-claim-footer-block/div/button' }
	QA_HOME_DASHBOARD = { xpath: '/html/body/app-root/ion-app/ion-router-outlet/app-agent-interface-page/app-header-main/ion-header/ion-toolbar/ion-avatar[2]/img' }
	ASSIGN_CONVERSATION_TOPICS_TAGS = { xpath: '//*[@id="assignSupportQueryTopicTags"]/div/app-assign-support-query-topic-tags/ion-content/ion-list/ion-item-group/div/ion-item[2]' }
	MANAGE_CONVERSATION_TOPICS = { xpath: '//*[@id="home-content"]/app-company-unit-info-container/ion-content/ion-slides/div/ion-slide[2]/app-company-unit-settings/ion-content/ion-list/ion-item[3]/ion-button' }
	ADD_CONVERSATION_TAG_FIELD = { xpath: '//*[@id="companyUnitConversationTags"]/div/app-company-unit-conversation-tag-settings/ion-content/ion-item-group/ion-input/input' }
	SAVE_CONVERSATION_TAG = { xpath: '//*[@id="companyUnitConversationTags"]/div/app-company-unit-conversation-tag-settings/ion-footer/ion-toolbar/ion-buttons/ion-button[2]' }
	TAG_CONVERSATION = { xpath: '//*[@id="agent-content"]/app-chat/app-message-block/ion-content/div/div/app-message-item[2]/div/div/app-system-message/div/div/div/div[2]/app-support-topic-tags/div/ion-text/span' }
	QA_CONVERSATION_HISTORY = { xpath: '/html/body/app-root/ion-app/ion-router-outlet/app-home-container/ion-content/ion-split-pane/ion-menu/app-main-menu/ion-content/ion-list/ion-item[9]/ion-label' }
	QA_DIRECT_CONVERSATION_HISTORY = { xpath: '//*[@id="consumerPlatformsNav"]/app-consumer-platform-history-container/app-header/ion-header/ion-toolbar[2]/ion-segment/ion-segment-button[2]' }
	QA_PUBLIC_CONVERSATION_HISTORY = { xpath: '//*[@id="consumerPlatformsNav"]/app-consumer-platform-history-container/app-header/ion-header/ion-toolbar[2]/ion-segment/ion-segment-button[3]' }
	QA_RESOLVE_DROPDOWN = { xpath: '' }
	ACTIVATE_BOT_FIRST_RESPONDER = { xpath: '//*[@id="home-content"]/app-company-unit-info-container/ion-content/ion-slides/div/ion-slide[2]/app-company-unit-settings/ion-content/ion-list/app-company-unit-welcome-assistant/ion-item-group/ion-item[2]/ion-toggle' }
	QA_OUTBOUND_TAB = { xpath: '/html/body/app-root/ion-app/ion-router-outlet/app-agent-interface-page/ion-content/ion-split-pane/ion-menu/app-rooms-container/app-header/ion-header/ion-toolbar[2]/ion-segment/ion-segment-button[2]' }
	REMOVE_BOT = { xpath: '' }
	BOT_TEXT = { xpath: '//*[@id="mat-tab-label-0-2"][contains(., "Bot")]' }
	CONVO_HISTORY = { xpath: '//*[contains(., "Conversation History")]' }
	CONVO = { xpath: '//*[contains(., "Conversations")]' }
	CONVO_SEARCH_FIELD = { id: 'mat-input-1' }
	TEN_SHOULD_NOT_SEE = { xpath: '//*[contains(., "10290")]' }
	ADD_COMPANY_UNIT = { xpath: '/html/body/app-root/app-home/div/div/app-companies-container/div[1]/div[2]' }
	COMPANY_UNIT_INPUT = { xpath: '//*[@id="mat-input-1"]' }
	COMPANY_UNIT_2 = { xpath: '' }
	DASHBOARD = { xpath: '/html/body/app-root/ion-app/ion-router-outlet/app-home-container/ion-content/ion-split-pane/ion-menu/app-main-menu/ion-content/ion-list/ion-item[1]/ion-label' }
	CREATE = { xpath: '//*[@id="mat-dialog-0"]/create-company-unit-dialog/div/div[3]/button[2]' }
	SUPPORT_REPLY = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[2]/div[3]/div[2]/button[2]' }
	PRODUCT_INFO_REPLY = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[2]/div[3]/div[2]/button[3]' }
	FEEDBACK_REPLY = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[2]/div[3]/div[2]/button[4]' }
	CHAT_WITH_US_REPLY = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[2]/div[3]/div[2]/button[5]' }
	ATTACH_FILE_BUTTON = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[3]/div[2]/label/svg/g' }
	CHAT_CLOSE_BUTTON = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[1]/div[1]/svg/path' }
	IN_CHAT_URL = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[2]/div[3]/div[1]/div/div/div[1]/a' }
	GET_STARTED_BUTTON = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[2]/div[3]/div[2]/button[1]' }
	GET_STARTED_BUTTON_TEXT = { xpath: '//button[contains(.,"Get Started")]' }
	GET_STARTED_REPLY = { xpath: '//*[contains(.,"To get you started on your journey")]' }
	WANT_TO_KNOW_MORE_REPLY = { xpath: '//*[contains(.,"Want to know more?")]' }
	GREAT_BOT_RESPONSE = { xpath: '//*[contains(.,"Great!")]' }
	HELP_BOT_RESPONSE = { xpath: '//*[contains(.,"Is there anything else I can help you with?")]' }
	YES_BUTTON = { xpath: '//button[contains(.,"Yes")]' }
	NO_BUTTON = { xpath: '//button[contains(.,"No")]' }
  ADD_IMAGE = {id: 'upload-btn'}
	NO_BUTTON_RESPONSE_1 = { xpath: '//*[contains(.,"It has been great chatting with you.")]' }
	NO_BUTTON_RESPONSE_2 = { xpath: '//*[contains(.,"Have a wonderful day")]' }
	REGISTER_LINK = { xpath: '//a[contains(.,"https://app.hi.guru/account/register")]' }
	WELCOME_HIGURU = { xpath: '//h1[contains(.,"Welcome to hi.guru")]' }
	HIGURU_LOGO = { xpath: '/html/body/app-root/app-account-container/div/div[1]/img' }
	SUPPORT_BUTTON = { xpath: '//button[contains(.,"Support")]' }
	SUPPORT_BOT_RESPONSE = { xpath: '//*[contains(.,"Please give us a short")]' }
	DESCRIPTION_BOT_RESPONSE_1 = { xpath: '//*[contains(.,"Thank you! We have received your query.")]' }
	DESCRIPTION_BOT_RESPONSE_2 = { xpath: '//*[contains(.,"will be in touch shortly.")]' }
  PRODUCT_INFO_BUTTON = { xpath: '//button[contains(.,"Product Info")]' }
	FEEDBACK_BUTTON = { xpath: '//button[contains(.,"Feedback")]' }
	CHAT_WITH_US_BUTTON = { xpath: '//button[contains(.,"Chat with us")]' }
  SEND_BUTTON = { css: '.higuru_compose-action-icon path' }
	CHAT_FIELD = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[3]/div[1]/div/div/div[1]' }
	CONVERSATION_RESOLVED_TEXT = {xpath: "//*[contains(.,'Conversation resolved by bot')]" }
	WIDGET_SEND_BUTTON = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[3]/div[1]/svg/g/rect' }
	WEB_WIDGET = { xpath: '//*[@id="higuru-webchat"]/div/div/img' }
	WEB_WIDGET_CHAT_FIELD = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[3]/div[1]/div/div/div[1]' }
	WEB_WIDGET_CHAT_FIELD_SEND_BUTTON = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[3]/div[1]/svg/g/rect' }
	HG_CHAT_FIELD = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[3]/div[1]/div/div/div[1]' }
	CONVERSATION_AGENT_RESOLVED = { xpath: '//div[contains(.,"Agent resolved conversation")]' }
	MY_PLEASURE_TEXT = { xpath: '//*[contains(.,"my pleasure.")]' }
	YOUR_WELCOME_TEXT = { xpath: '//*[contains(.,"re welcome.")]' }
  CONVERSATION_BOT_RESOLVED = {xpath: "//*[contains(.,'Conversation resolved by bot')]" }
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
	LOGIN_TEXT = { xpath: "//*[contains(.,'Log In')]" }
	EMAIL_TEXT = { xpath: "//*[contains(.,'Email')]" }
	ENTER_PASSWORD_TEXT = { xpath: "//*[contains(.,'Enter your password')]" }
	INVALID_EMAIL_TEXT = { xpath: "//*[contains(.,'Invalid email')]" }
	LOGIN_FROM_CREATE = { xpath: "//a[contains(.,'Login')]" }
	OTP_FIELD = { xpath: '//*[@id="digit1"]/input' }
	OTP_NEXT_BUTTON = { xpath: '//*[@id="validateOtp"]' }
	GMAIL_NEXT_BUTTON = { xpath: '//*[@id="identifierNext"]/span/span' }
	GMAIL_PASSWORD_NEXT_BUTTON = { xpath: '//*[@id="passwordNext"]/span' }
	SIGN_UP_BUTTON = { xpath: '//*[@id="signUp"]' }
	ENTER_NAME_FIELD = { xpath: "//ion-input[@id='companyName']/input" }
	ENTER_NAME_FIELD_2= { xpath:'//*[@id="companyName"]/input' }
	ENTER_WEBSITE_NAME_FIELD = { xpath: "//*[@id='websiteName']/input" }
	ENTER_ACCOUNT_NAME_FIELD = { xpath: "//ion-input[@id='fullName']/input" }
	ADD_IMAGE_ICON = { css: '.add-image-icon-other' }
	CHOOSE_FILE_BUTTON = { xpath: '//*[@id="custom-input"]' }
	CREATE_PROFILE_NEXT_BUTTON = { xpath: '/html/body/app-root/app-account-container/div/div[2]/app-profile-form/div/div/div[2]/form/div/div[4]/button' }
	CREATE_COMPANY_DONE_BUTTON = { xpath: '/html/body/app-root/app-account-container/div/div[2]/app-company-form/div/div/div[2]/form/div/div[4]/button/div' }
	PROFILE_IMAGE_SELECT_BUTTON = { xpath: '/html/body/ngb-modal-window/div/div/div[3]/button' }
	ENTER_COMPANY_NAME_FIELD = { css: '.form-input' }
	CORONA_POP_UP_DISMISS = { xpath: '//*[@id="elementor-popup-modal-5312"]/div/div[4]/i' }
	LOGIN_BUTTON_TEXT = { xpath: '//*[@id="menu-1-d5d5cab"]/li[7]/a' }
	DELETE_AGENT = { xpath: '//*[@id="ion-overlay-2"]/div/div[2]/app-list-popover/ion-list/ion-item/ion-label' }
	SELECT_DELETE = { xpath: '//*[@id="usersNav"]/app-user-details/app-header/ion-header/ion-toolbar/ion-buttons[2]/ion-button[2]' }
	SELECT_AGENT = { xpath: '//*[@id="usersNav"]/app-users-container/ion-content/ion-list/app-user-item[2]/ion-nav-link/ion-card/ion-avatar/img[1]' }
	HIGURU_COMPANY_UNIT_SELECTION = { xpath: '/html/body/app-root/ion-app/ion-router-outlet/app-login-container/ion-content/ion-router-outlet/app-company-unit-selection-container/ion-content/ion-list/app-company-unit-item[1]/ion-item/ion-avatar/img' }
	RECEIVED_MAIL = { xpath: '//span[contains(text(),"Hi there")]' }
	PREMIUM_MAILER =  { xpath: '//span[contains(text(),"Your Company Unit has added a service")]' }
	PREMIUM_MAILER_2=  { xpath: '//span[contains(text(),"Your Company Unit has removed a service")]'}
	PREMIUM_MAILER_TEXT=  { xpath: '//span[contains(text(),"Premium Channel - Twitter")]'}
	OTHER = { xpath: '//*[@id="Pivot33-Tab1"]/span/div/div/span/span[2]' }
	VERIFICATION_CODE = { css: 'p:nth-child(3)' }
	NEXT_BUTTON_2 = { xpath: "/html/body/app-root/app-account-container/div/div[2]/app-register-form/div/div/div[2]/form/div/button/div" }
	BUSINESS_EMAIL_FIELD = { xpath: "(//ion-input[@id='email']/input)[2]" }
	BUSINESS_PASSWORD_FIELD = { xpath: "(//ion-input[@id='password']/input)[2]" }
	SIGN_UP_CHECKBOX= { xpath: '//*[@id="acceptTerms"]'}
	REGISTER_NEXT_BUTTON_1 = { xpath: '//*[@id="register"]'}
	REGISTER_NEXT_BUTTON_3 = { xpath: '//*[@id="goToOrganisationDetail"]'}
	ORGANISATION_SIZE_FIELD = { xpath: "//ion-nav[@id='registrationNav']/app-organisation-detail/div[2]/ion-card-content/form/ion-item-group/ion-item/ion-label/ion-button/ion-label"}
	ORGANISATION_SIZE_OPTION = { xpath:"//ion-label[contains(.,'1 - 9 People')]"}
	CATEGORY_FIELD= { xpath: "//ion-nav[@id='registrationNav']/app-organisation-detail/div[2]/ion-card-content/form/ion-item-group/ion-item[2]/ion-label/ion-button"}
	CATEGORY_OPTION = { xpath: "//ion-label[contains(.,'Customer Engagement')]"}
	YOUR_ROLE_FIELD = { xpath: "//ion-nav[@id='registrationNav']/app-organisation-detail/div[2]/ion-card-content/form/ion-item-group/ion-item[3]/ion-label/ion-button/ion-label"}
	YOUR_ROLE_OPTION = { xpath: "//ion-item[contains(.,'Owner')]"}

	REGISTER_NEXT_BUTTON_4 = { xpath: '//*[@id="createAccount"]'}
	ACCOUNT_WALKTHROUGH_TEXT = { css: '.account > .overlay-heading'}
	ACCOUNT_WALKTHROUGH_NEXT_BUTTON = { xpath: '//*[@id="cdk-overlay-0"]/app-dashboard-overlay/div/div[2]/div[2]/button'}
	CU_IMAGE_WALKTHROUGH_TEXT= { css: '.compunit-heading > .overlay-heading'}
	CU_WALKTHROUGH_BACK_BUTTON = { css: '.compunit-heading > .btn:nth-child(3)'}
	CU_WALKTHROUGH_NEXT_BUTTON = { xpath: "(//button[@type='button'])[5]"}
	CONVERSATION_WALKTHROUGH_TEXT = { css: ".conv-heading > .overlay-heading"}
	CONVERSATION_WALKTHROUGH_BACK_BUTTON = { css: '.conv-heading > .btn:nth-child(3)'}
	CONVERSATION_WALKTHROUGH_NEXT_BUTTON = { css: ".conv-heading > .btn:nth-child(4)"}
	STATS_WALKTHROUGH_TEXT= { css: '.stats-heading > .overlay-heading'}
	STATS_WALKTHROUGH_BACK_BUTTON= { css: '.stats-heading > .btn:nth-child(3)'}
	STATS_WALKTHROUGH_NEXT_BUTTON= { css: '.stats-heading > .btn:nth-child(4)'}
	CHANNELS_WALKTHROUGH_TEXT = { css: '.channels-heading > .overlay-heading'}
	CHANNELS_WALKTHROUGH_BACK_BUTTON = { css: '.channels-heading > .btn:nth-child(3)'}
	CHANNELS_WALKTHROUGH_NEXT_BUTTON = { css: '.channels-heading > .btn:nth-child(4)'}
	TEAMS_WALKTHROUGH_TEXT = { css: '#team .overlay-heading'}
	TEAMS_WALKTHROUGH_BACK_BUTTON = { css: '#team .btn:nth-child(3)'}
	TEAMS_WALKTHROUGH_NEXT_BUTTON = { css: '#team .btn:nth-child(4)'}
	PEOPLE_WALKTHROUGH_TEXT= { css: '#peeps .overlay-heading'}
	PEOPLE_WALKTHROUGH_BACK_BUTTON = { css: '#peeps .btn:nth-child(3)'}
	PEOPLE_WALKTHROUGH_NEXT_BUTTON = { css: '#peeps .btn:nth-child(4)'}
	DOC_LIBRARY_WALKTHROUGH_TEXT = { css: '#docs .overlay-heading'}
	DOC_LIBRARY_WALKTHROUGH_BACK_BUTTON = { css: '#docs .btn:nth-child(3)'}
	DOC_LIBRARY_WALKTHROUGH_NEXT_BUTTON = { css: '#docs .btn:nth-child(4)'}
	FAQ_WALKTHROUGH_TEXT= { css: ''}
	FAQ_WALKTHROUGH_BACK_BUTTON = { css: '#faq .btn:nth-child(3)'}
	FAQ_WALKTHROUGH_NEXT_BUTTON = { css: '#faq .btn:nth-child(4)'}
	CONVO_HISTORY_WALKTHROUGH_TEXT = { css: '#hist .overlay-heading'}
	CONVO_HISTORY_WALKTHROUGH_BACK_BUTTON = { css: '#hist .btn:nth-child(3)'}
	CONVO_HISTORY_WALKTHROUGH_NEXT_BUTTON = { css: '#hist .btn:nth-child(4)'}
	BOTS_WALKTHROUGH_TEXT= { css: '#bot .overlay-heading'}
	BOTS_WALKTHROUGH_BACK_BUTTON = { css: '#bot .btn:nth-child(3)'}
	BOTS_WALKTHROUGH_DONE_BUTTON = { css: '#bot .btn:nth-child(4)'}
	LETS_GET_STARTED_TEXT_BODY = { css: '.ion-text-wrap:nth-child(3)'}
	WALKTHROUGH_GET_STARTED_BUTTON = { css: '.ios'}
	CHANNEL_TITLE_TEXT = { xpath: '//*[@id="channelsNav"]/app-channels-container/app-header/ion-header/ion-toolbar[1]/ion-title'}

	ACCOUNT_NEXT_BUTTON = { xpath: '//*[@id="cdk-overlay-1"]/app-dashboard-overlay/div/div[2]/div[2]/div[1]'}
	WALK_THROUGH_TOUR_CLOSE =  { xpath: '//*[@id="cdk-overlay-0"]/app-dashboard-overlay/div/div[13]' }
	DONE_BUTTON_1 = { xpath: '/html/body/app-root/app-account-container/div/div[2]/app-password-reset-form/div/form/div/div[1]/button' }
	CREATE_YOUR_COMPANY_TEXT = { xpath: '/html/body/app-root/app-account-container/div/div[2]/app-company-form/div/div/div[2]/form/div/div[1]'}
	CREATE_YOUR_PROFILE_TEXT = { xpath: '//*[contains(.,"Create Your Profile")]' }
  DASHBOARD_TEXT = { xpath: '//*[@id="home-content"]/app-dashboard-container/app-header/ion-header/ion-toolbar/ion-title'}
	END_GREETING_TEXT = { xpath: "//*[contains(.,'Thanks for stopping by. Chat soon and have a great day.')]" }
  PEOPLES_TAB = { xpath: "//div[@id='sidebar-wrapper']/div[2]/ul/li[6]/span[2]/a" }
	PEOPLE_TAB_UPGRADE_BUTTON = { xpath: '//*[@id="upgrade-btn-ga-11"]' }
	AGENT_PLACEHOLDER = { xpath: "//ion-nav[@id='usersNav']/app-users-container/ion-content/ion-list/app-user-item[2]/ion-nav-link/ion-card/ion-avatar/img"}
	AGENT_DROP_DOWN_MENU = { xpath: "//ion-nav[@id='usersNav']/app-user-details/app-header/ion-header/ion-toolbar/ion-buttons[2]/ion-button[2]" }
  DELETE_USER_BUTTON = { xpath: '//app-list-popover/ion-list/ion-item/ion-label' }
  MODAL_DELETE_USER_BUTTON = { xpath: "//button[contains(.,'Delete')]" }
  ADD_PERSON_BUTTON = { xpath: "//ion-button[contains(.,'Add Person')]" }
  AGENT_NAME_FIELD = { xpath: "//ion-modal[@id='UserCreateComponent']/div/app-user-create/ion-content/div/form/ion-item/ion-input/input" }
  AGENT_EMAIL_FIELD = {  xpath: "//ion-modal[@id='UserCreateComponent']/div/app-user-create/ion-content/div/form/ion-item[2]/ion-input/input" }
	AGENT_OVERLAY= { xpath: '/html/body/div[3]/div[2]'}
	AGENT_CREATE_BUTTON = { xpath: "//ion-button[contains(.,'Create')]" }
	STANDARD_PLAN_UPGRADE_BUTTON= { xpath: '//*[@id="upgrade-btn-ga-7"]'}
	SELECT_A_COUNTRY_FIELD = { xpath: '//*[@id="mat-select-1"]/div/div[1]/span'}
	SELECT_COUNTRY_DROP_DOWN = { xpath: '//*[@id="mat-option-4"]/span'}
	UPGRADE_COMPANY_NAME_FIELD = { xpath: '/html/body/app-root/app-billing-details-container/div/div[2]/div/div/div/form/div/mat-form-field[2]/div/div[1]/div'}
	UPGRADE_STREET_ADDRESS_FIELD = { xpath: '/html/body/app-root/app-billing-details-container/div/div[2]/div/div/div/form/div/mat-form-field[3]/div/div[1]/div'}
	UPGRADE_CITY_FIELD = { xpath: '/html/body/app-root/app-billing-details-container/div/div[2]/div/div/div/form/div/mat-form-field[4]/div/div[1]/div'}
	UPGRADE_PAYMENT_METHOD_BUTTON = { xpath: '/html/body/app-root/app-billing-details-container/div/div[3]/button[2]'}

  PEOPLE_TAB_TITLE_TEXT = { xpath: "//app-people/div/div" }
	AGENT_INVITE_EMAIL = { xpath: "//tr[@id=':4u']" }
	OUTLOOK_INVITE_EMAIL= { xpath: '//span[contains(text(),"agent account")]' }
	AGENT_CONFIRM_EMAIL_BUTTON = {xpath: "//div[@id='app']/div/div[2]/div/div/div[3]/div[2]/div/div[3]/div/div/div/div/div[2]/div/div/div/div/div/div[2]/div/div/div/div/div/div[2]/div/div/a"}

	FACEBOOK_CHANNEL_CARD = {xpath: '//*[@id="channelsNav"]/app-channel-select/ion-content/ion-list/ion-item-group[2]/app-platform-item[1]/ion-nav-link/ion-card'}
	ADD_FACEBOOK_CHANNEL_BUTTON = {xpath: '//*[@id="channelsNav"]/app-platform-details/ion-content/ion-list/ion-item/ion-label/ion-button'}
	FACEBOOK_EMAIL_FIELD = {css: "#email"}
	FACEBOOK_EMAIL_FIELD_2 = { id: 'email'}
	FACEBOOK_PASSWORD_FIELD = {css: "#pass"}
	FACEBOOK_LOGIN_BUTTON_3 = {xpath: "//label[@id='loginbutton']/input"}
	FACEBOOK_CONTINUE_AS_BUTTON = {css: ".bwm1u5wc"}
	FACEBOOK_SELECT_ALL_BUTTON = {xpath: "//input[@id='allAssetsInput']"}
	FACEBOOK_NEXT_BUTTON = {xpath: "//span[contains(.,'Next')]"}
	FACEBOOK_DONE_BUTTON = {xpath: "//span[contains(.,'Done')]"}
	FACEBOOK_OK_BUTTON = {xpath: "//form[@id='platformDialogForm']/div/div/div/div/div/div[3]/div/div/div/div"}
	ADD_PAGE_BUTTON = {xpath: "//ion-nav[@id='channelsNav']/app-facebook-page-select/ion-content/ion-list/app-facebook-page-item[21]/ion-item/ion-button"}
	ENABLE_PUBLIC_CONVERSATIONS = {xpath: "//ion-toggle[@id='publicActive']"}
	FACEBOOK_ADD_BUTTON = {xpath: '//*[@id="channelsNav"]/app-facebook-page-select/ion-content/ion-list/app-facebook-page-item[21]/ion-item/ion-button]'}
	FACEBOOK_DONE_BUTTON_2 = {xpath: "//ion-modal[@id='platformPermissionModal']/div/app-platform-permissions/ion-footer/ion-toolbar/ion-buttons/ion-button[2]"}
	FACEBOOK_LOG_IN_BUTTON = {xpath: '//*[@id="loginbutton"]'}
	FACEBOOK_LOG_IN_BUTTON_2 = {xpath: '//*[@id="u_0_b"]'}
	CLOSE_FACEBOOK_NOTIFICATION = {xpath: ''}
	SEARCH_FIELD = {css: '.hidtqoto'}
	PAGE_OPTION = {xpath: "//li[@id='qa 9020 2']/div/div/div/div[2]/span"}
	PAGE_OPTION_2 = {css: ".g5gj957u > .ekzkrbhg"}
	SEARCH_BUTTON = {xpath: '//*[@id="js_r"]/form/button'}
	FACEBOOK_PAGE = {css: '.l9j0dhe7 > .gmql0nx0 > span'}
	FACEBOOK_PAGE_2 = {css: '.l9j0dhe7:nth-child(1) > div:nth-child(1) > .j83agx80:nth-child(1) > .hpfvmrgz:nth-child(2) .qzhwtbm6:nth-child(1) > .oi732d6d:nth-child(1) span:nth-child(1)'}
	VIEW_AS_VISITOR = {xpath: "//span[contains(.,'View as visitor')]"}
	CREATE_POST_BUTTON = {css: '.oajrlxb2:nth-child(2) > .rq0escxv .oi732d6d'}
	POST_FIELD = {css: '.rq0escxv > .\_5rp7 .\_1mf'}
	POST_FIELD_POP_UP = {xpath: '//*[@id="js_ex"]/div[1]/div/div[1]/div[1]/div[2]/div/div/div/div/div/div/div[2]/div/div/div/div'}
	POST_BUTTON = {xpath: '//*[@id="js_ex"]/div[2]/div[3]/div[2]/div[2]/div/button/span'}
	POST_BUTTON_2 = {css: '.oqcyycmt'}
	FACEBOOK_PAGE_SWITCH_OPTION = {xpath: '//*[@id="js_2p4"]/span[3]/i'}
	FACEBOOK_PAGE_OPTION = {xpath: '//*[@id="globalContainer"]/div[3]/div/div/div/div/div/div[1]/div/div[2]/div/div/div[2]/div[1]'}
	COMMENT_FIELD = {xpath: '//*[@id="u_3i_l"]/div/div[3]/div[2]/div[2]/div/div/div/div/div/form/div/div/div[2]/div/div/div/div'}


#########################-----------Fastcomm Elements-----------#########################

	WELCOME_FASTCOMM_TEXT = { xpath: "//*[contains(.,'Hi! Welcome to Fastcomm. What are you most interested in today?')]" }
	OUR_SOLUTION_BUTTON = { xpath: "//button[contains(.,'Our Solutions')]" }
	MORE_FASTCOMM_BUTTON = { xpath: "//button[contains(.,'More about Fastcomm')]" }
	MEDIA_BUTTON = { xpath: "//button[contains(.,'Media')]" }
	CREATING_WITH_US_BUTTON = { xpath: "//button[contains(.,'Creating with us')]" }
	CHATTING_TO_US_BUTTON = { xpath: "//button[contains(.,'Chatting to us')]" }
# Our Solution Bot response #
	FC_SOLUTION_RESPONSE_2 = { xpath: "//*[contains(.,'implemented various platforms')]" }
	FC_SOLUTION_RESPONSE_3 = { xpath: "//*[contains(.,'aimed at connecting people, places')]" }
	HI_GURU_BUTTON = { xpath: "//button[contains(.,'hi.guru')]" }
	LATCH_BUTTON = { xpath: "//button[contains(.,'latch')]" }
	CHAT_TEXT_FIELD = { css: ".higuru_input" }
	OUR_SOLUTION_RESPONSE_1 = { xpath: "//*[contains(.,'We have successfully created and implemented various platforms aimed')]" }
	HG_SOLUTION_RESPONSE_2 = { xpath: "//*[contains(.,'at connecting people, places and things in a more convenient and')]" }
	HG_SOLUTION_RESPONSE_3 = { xpath: "//*[contains(.,'flexible way. These platforms allow businesses to')]" }
	OUR_SOLUTION_RESPONSE_4 = { xpath: "//*[contains(.,'focus on their growth and boost productivity by enhancing their')]" }
	OUR_SOLUTION_RESPONSE_5 = { xpath: "//*[contains(.,'existing business processes. Our Platforms are:')]" }
	HELLOTHING_BUTTON = { xpath: "//button[contains(.,'HelloThing')]" }
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
	CHATTING_TO_US_RESPONSE_1 = { xpath: "//*[contains(.,'We love connecting. A consultant will be with you shortly to discuss anything further you may be interested in')]" }
	AGENT_NOT_AVAILABLE = { xpath: "//*[contains(.,'We love connecting. Our consultants are currently unavailable.')]" }
	AGENT_NOT_AVAILABLE_1 = { xpath: "//*[contains(.,'Please leave us your email and they will get back to you.')]" }
	AGENT_UNAVAILABLE_BUTTON = { xpath: '//*[@id="cdk-overlay-0"]/div/div/ion-list/ion-item[2]/ion-toggle' }
	AGENT_AVAILABLE_BUTTON = { xpath: '//*[@id="cdk-overlay-0"]/div/div/ion-list/ion-item[2]/ion-toggle' }
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
	REPLY_CHAT_GENERIC = { class: 'higuru_message undefined higuru_message-in' }
	CONVO_ASSIGNED_TEXT = { xpath: '//*[contains(., "Conversation assigned to ")]' }
	REPLY_CHAT_GENERIC_1 = { xpath: '//*[@id="higuru-webchat"]/div/div/div[1]/div[2]/div[6]/div/div/div/div[1]' }
	REPLY_CHAT_GENERIC_2 = { xpath: '//*[@id="higuru-webchat"]/div/div/div[1]/div[2]/div[7]/div/div/div/div[1]' }
	BOT_CHAT = { xpath: '//*[@id="mat-tab-content-0-2"]/div/div/app-room/div/div[2]/div[1]/span[1]' }
	CLAIM_BUTTON = { xpath: '/html/body/app-root/app-agent-interface-page/div[2]/app-chat/app-claim-footer-block/div/button' }
	CONVO_CLAIMED_TEXT = { xpath: "//*[contains(.,'Conversation successfully claimed')]" }
	INBOUND_CHAT_FIELD = { xpath: '/html/body/app-root/app-agent-interface-page/div[2]/app-chat/app-chat-footer-block/app-agent-chatbox/div[1]' }
	INBOUND_CHAT_SEND_BUTTON = { xpath: '/html/body/app-root/app-agent-interface-page/div[2]/app-chat/app-chat-footer-block/app-agent-chatbox/div[2]/img[1]' }
	RESOLVE_BUTTON = { xpath: '/html/body/app-root/app-agent-interface-page/div[2]/app-chat/app-chat-header/div[2]/button/img' }
	RESOLVE_TEXT = { xpath: '//button[2][contains(.,"Resolve")]' }
	RESOLVED_TEXT = { xpath: '//span[contains(.,"Conversation successfully resolved")]' }
	THANK_YOU_TEXT = { xpath: '//*[contains(.,"Thank you Awesome Bot!")]' }
	RESOLVED_TIME_1 = { xpath: '//*[@id="higuru-webchat"]/div/div/div[1]/div[2]/div[8]/div' }
	RESOLVED_TIME_2 = { xpath: '//*[@id="higuru-webchat"]/div/div/div[1]/div[2]/div[9]/div' }
	POP_UP_DISMISS = { class: 'eicon-close' }
end