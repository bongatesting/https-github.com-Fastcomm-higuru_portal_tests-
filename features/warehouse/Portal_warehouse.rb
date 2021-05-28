# frozen_string_literal: true

class ElementWarehouse

	#########################-----------HiGuru Elements-----------#########################

	HIGURU_WIDGET = { id: 'Oval-19' }
	FASTCOMM_WIDGET = { css: '.higuru_higuru-web-icon' }
	FASTCOMM_LOGO = { xpath: "//img[contains(@src,'https://fastcomm.com/wp-content/uploads/2020/06/Fastcomm-logo_White.svg')]" }
	LOGO = { xpath: '/html/body/app-root/app-account-container/div/div[1]/img' }
	FORGOT_EMAIL_FIELD = { xpath: '/html/body/app-root/ion-app/ion-router-outlet/app-login-container/ion-content/ion-router-outlet/app-forgot-password/ion-grid/ion-row/ion-card/ion-card-content/form/ion-item-group/ion-item' }
	EMAIL_FIELD = { xpath: '//*[@id="email"]/input' }
	SEND_RESET_EMAIL = { xpath: '//*[@id="resetPasswordRequest"]' }
	PASSWORD_FIELD = { xpath: '//*[@id="password"]/input' }
	PASSWORD_FIELD_1 = { css: '.form-group:nth-child(2) > .form-input' }
	LOGIN_BUTTON = { xpath: '//*[@id="login"]' }
	WRONG_EMAIL_TEXT = { xpath: "//a[contains(.,'Incorrect email/password')]" }
	LOGOUT_BUTTON = { xpath: '//*[@id="ion-overlay-2"]/div[2]/div[2]/app-account-user/ion-list/ion-item[6]/ion-label' }
	HIGURU_LOGIN_BUTTON = { xpath: '//*[@id="menu-1-d5d5cab"]/li[6]/a' }
	LOGIN_ACCOUNT_SELECT = { xpath: "//ion-button[contains(.,'Go')]"}
	LOGIN_SELECT_AGENT_ACCOUNT = { xpath: '//app-company-item[2]/ion-item/ion-button'}
	SELECT_NGUNI_LAND = { xpath: '//app-company-item[3]/ion-item/ion-button'}
	LOGIN_CU_SELECT = { xpath: '//app-company-unit-item/ion-item/ion-button' }
	LOGIN_BUTTON_1 = { xpath: '//*[@id="menu-1-d5d5cab"]/li[6]/a' }
	ALREADY_HAS_ACCOUNT = { css: '.center-text:nth-child(2) > #signUp' }
	BRKLYN = { xpath: '/html/body/app-root/ion-app/ion-router-outlet/app-login-container/ion-content/ion-router-outlet/app-company-unit-selection-container/ion-grid/ion-row/ion-card/ion-card-content/ion-content/ion-list/app-company-unit-item[1]/ion-item/ion-button' }
	SWITCH_TO_TEST = { xpath: '//*[@id="cdk-overlay-0"]/div/div/div/div/div[3]/button' }
	SWITCH_TO_MAIN_COMPANY = { xpath: '//*[@id="cdk-overlay-0"]/div/div/div/div/div[3]/button' }
	TWITTER_USERNAME = { xpath: "//input[@id='username_or_email']" }
	TWITTER_SIGN_IN_BUTTON = { xpath: '//*[@id="react-root"]/div/div/div[2]/main/div/div/div[1]/form/div/div[3]/div/div/span/span' }
	TWEET_FIELD = { xpath: '//*[@id="react-root"]/div/div/div[2]/main/div/div/div/div/div/div[2]/div/div[2]/div[1]/div/div/div/div[2]/div[1]/div/div/div/div/div/div/div/div/div/div[1]/div/div/div/div[2]/div/div/div/div' }
	TWEET_BUTTON = { xpath: '//*[@id="react-root"]/div/div/div[2]/main/div/div/div/div[1]/div/div[2]/div/div[2]/div[1]/div/div/div/div[2]/div[4]/div/div/div[2]/div[3]/div/span/span' }
	TWITTER_MORE_BUTTON = { xpath: '//*[@id="react-root"]/div/div/div[2]/header/div/div/div/div[2]/div/div/div[1]/div/div[2]' }
	LOG_OUT_TWITTER = { xpath: '//*[@id="layers"]/div[2]/div/div/div[2]/div/div[2]/div/div/div/div/div/a[2]/div/div' }
	CONFIRM_LOGOUT_TWITTER = { xpath: '//*[@id="layers"]/div[2]/div/div/div/div/div/div[2]/div[2]/div[3]/div[2]/div/span/span' }
	TWITTER_PASSWORD = { xpath: "//input[@id='password']" }
	WEB_MESSAGE_DROP_DOWN = { xpath: '//ion-item/ion-button' }
	TWITTER_DROP_DOWN = { xpath: '//ion-item/ion-button' }
	FACEBOOK_DROP_DOWN = { xpath: '//app-dropdown-with-images/ion-item-group/ion-item-group' }
	WEB_MESSAGE_SETTINGS = { xpath: "//ion-label[contains(.,'Channel Settings')]" }
	PRE_CHAT_FORM_TOGGLE = { xpath: '//ion-toggle' }
	WEB_MESSAGE_SECURITY_TAB = { xpath: "//ion-segment-button[contains(.,'Security')]" }
	WEB_MESSAGE_CUSTOMIZE_TAB = { xpath: "//ion-segment-button[contains(.,'Customise')]" }
	HIDE_HIGURU_BRANDING = { xpath: '//ion-checkbox' }
	WEB_WIDGET_COLOR = { xpath: "//div[@id='widgetColour']/span" }
	WEB_WIDGET_COLOR_PICKER = { xpath: '//div[2]' }
	WEB_WIDGET_COLOR_OK_BUTTON = { xpath: "//button[contains(.,'Ok')]" }
	BUTTON_POSITIONING_LEFT = { xpath: "//ion-radio[@value='left']" }
	BUTTON_POSITIONING_RIGHT = { xpath: "//ion-radio[@value='right']" }
	UPDATE_CHANNEL_SETTINGS_BUTTON = { xpath: "//ion-button[contains(.,'Update')]" }
	WIDGET_BUTTON_PREVIEW_TOGGLE = { xpath: '//ion-item-group[3]/ion-toggle' }
	WIDGET_PREVIEW_TEXT_FIELD = { xpath: '//ion-item-group[3]/ion-item/ion-input/input' }
	WIDGET_TITLE_TEXT_FIELD = { css: '.sc-ion-input-ios' }
	WEB_WHITELIST_MANAGE_TOGGLE = { xpath: '//form/ion-toggle' }
	WEB_WHITELIST_MANAGE_BUTTON = { xpath: "//ion-button[contains(.,'Manage')]" }
	WHITELIST_DOMAIN_CANCEL_BUTTON = { xpath: "//ion-button[contains(.,'Cancel')]" }
	REMOVE_DOMAIN = { xpath: '//ion-chip/ion-icon' }
	ADD_DOMAIN_FIELD = { xpath: '//ion-item-group/form/ion-item/ion-input/input' }
	WHITE_LIST_SAVE_BUTTON = { xpath: "//ion-button[contains(.,'Save')]" }
	WEB_INSTALLATION_TAB = { xpath: '//ion-segment-button[4]' }
	CHANNELS_SETTINGS_BACK = { xpath: '//*[@id="channelsNav"]/app-channel-settings-container/app-header/ion-header/ion-toolbar[1]/ion-buttons/ion-nav-link/ion-button' }
	REMOVE_WEB_CHANNEL = { xpath: "//ion-label[contains(.,'Remove Channel')]" }
	REMOVE_WEB_CHANNEL_DIALOGUE = { xpath: '//*[@id="alert-16-hdr"]' }
	REMOVE_TWITTER_CHANNEL = { xpath: "//ion-label[contains(.,'Remove Channel')]" }
	REMOVE_TWITTER_CHANNEL_DIALOGUE = { xpath: '//*[@id="alert-4-hdr"]' }
	REMOVE_TWITTER_CANCEL_BUTTON = { xpath: '//*[@id="ion-overlay-4"]/div[2]/div[3]/button[1]/span' }
	REMOVE_WEB_MESSAGE_CANCEL_BUTTON = { xpath: '//*[@id="ion-overlay-16"]/div[2]/div[3]/button[1]/span' }
	REMOVE_FACEBOOK_CHANNEL = { xpath: "//ion-label[contains(.,'Remove Channel')]" }
	CONFIRM_REMOVE_WEB_CHANNEL = { xpath: "//span[contains(.,'Confirm')]" }
	CONFIRM_REMOVE_TWITTER_CHANNEL = { xpath: "//span[contains(.,'Confirm')]" }
	CONFIRM_REMOVE_FACEBOOK_CHANNEL = { xpath: "//span[contains(.,'Confirm')]" }
	CHAT_FORM_NAME_CHECKBOX = { xpath: '//ion-checkbox' }
	CHAT_FORM_EMAIL_CHECKBOX = { xpath: '//ion-item[2]/ion-checkbox' }
	CHAT_FORM_MOBILE_NUMBER_CHECKBOX = { xpath: '//ion-item[3]/ion-checkbox' }
	ADD_FACEBOOK_DONE_BUTTON = { xpath: "//ion-button[contains(.,'Done')]" }
	CHECK_FACEBOOK_AVATAR = { xpath: '//*[@id="channelsNav"]/app-channels-container/ion-content/ion-slides/div/ion-slide[1]/ion-list/app-channel-item/ion-item/ion-avatar/img' }
	CONFIRM_ADD_FACEBOOK = { xpath: '//*[@id="platformPermissionModal"]/div[2]/app-platform-permissions/ion-footer/ion-toolbar/ion-buttons/ion-button[2]' }
	FACEBOOK_SELECT_PAGE = { xpath: '//*[@id="channelsNav"]/app-facebook-page-select/ion-content/ion-list/app-facebook-page-item[1]/ion-item/ion-button' }
	CONFIRM_ADD_TWITTER = { xpath: '//ion-button[2]' }
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
	ALLOW_NOTIFICATION = { xpath: '/html/body/app -root/app-home/app-header/app-notification-bar/div/div[2]/span[2]/button' }
	QA_NOT_NOW_NOTIFICATION = { xpath: '/html/body/app-root/ion-app/ion-router-outlet/app-agent-interface-page/app-header-main/ion-header/app-notification-bar/div/div[2]/span[3]/button' }
	NOT_NOW_NOTIFICATION = { xpath: '/html/body/app-root/ion-app/ion-router-outlet/app-home-container/app-header-main/ion-header/app-notification-bar/div/div[2]/span[3]/button' }
	NOT_NOW_NOTIFICATION_2 = { xpath: '/html/body/app-root/app-home/app-notification-bar/div/div[2]/span[1]/button' }
	TEST_FASTCOMM = { xpath: '//app-company-unit-item[1]/ion-item/ion-button' }
	TEST_HIGURU = { xpath: '//app-company-unit-item[2]/ion-item/ion-button' }
	BACK_TO_LOGIN = { xpath: '//a[contains(text(),"Back to Login")]' }
	PASSWORD_RESET_REQUEST = { css: ".bqe:nth-child(1)" }
	RESET_PASSWORD = { xpath: '//a[contains(.,"Reset password.")]' }
	NEW_PASSWORD_FIELD = { xpath: '//*[@id="password"]/input' }
	OUTLOOK_SELECT_EMAIL = { xpath: '//*[@id="AQAAAEnFQpwBAAAAfphTXgAAAAA="]/div/div/div' }
	AGENT_HOME_BUTTON = { xpath: '/html/body/app-root/ion-app/ion-router-outlet/app-agent-interface-page/app-header-main/ion-header/ion-toolbar/ion-avatar/img' }
	CONFIRM_PASSWORD_FIELD = { xpath: '//*[@id="verifyPassword"]/input' }
	CURRENT_PASSWORD_FIELD = { xpath: '//*[@id="home-content"]/app-account-info-container/ion-content/div/ion-slides/div/ion-slide[3]/app-account-security/ion-list/form/ion-list/ion-item[1]/ion-input/input' }
	SECURITY_NEW_PASSWORD_FIELD = { xpath: '//*[@id="home-content"]/app-account-info-container/ion-content/div/ion-slides/div/ion-slide[3]/app-account-security/ion-list/form/ion-list/ion-item[2]/ion-input/input' }
	SEC_CONFIRM_PASSWORD_FIELD = { xpath: '//*[@id="home-content"]/app-account-info-container/ion-content/div/ion-slides/div/ion-slide[3]/app-account-security/ion-list/form/ion-list/ion-item[3]/ion-input/input' }
	UPDATE_PASSWORD = { xpath: '//*[@id="home-content"]/app-account-info-container/ion-content/div/ion-slides/div/ion-slide[3]/app-account-security/ion-list/form/ion-list/ion-buttons/ion-button[2]' }
	ACCOUNT_FULL_NAME = { xpath: '//*[@id="ion-input-2-lbl"]/ion-input/input' }
	ACCOUNT_SETTINGS = { xpath: "//ion-label[contains(.,' Account Settings ')]" }
	OWNER_DROP_DOWN_MENU = { xpath: '/html/body/app-root/ion-app/ion-router-outlet/app-home-container/app-header-main/ion-header/ion-toolbar/ion-avatar[2]/img[1]' }
	OWNER_LOGOUT_BUTTON = { xpath: "//ion-label[contains(.,'Log Out')]" }
	ACCOUNT_INFO_SECURITY = { xpath: '//*[@id="home-content"]/app-account-info-container/app-header/ion-header/ion-toolbar[2]/ion-segment/ion-segment-button[3]' }
	ACCOUNT_INFO_SETTINGS = { xpath: '//*[@id="home-content"]/app-account-info-container/app-header/ion-header/ion-toolbar[2]/ion-segment/ion-segment-button[2]' }
	ACC_INFO_PASSWD_RESET_BUTTON = { xpath: '//*[@id="home-content"]/app-account-info-container/ion-content/div/ion-slides/div/ion-slide[3]/app-account-security/ion-list/ion-item/ion-button' }
	PROFILE_BUTTON = { css: '.agent-image' }
	SIGN_OUT = { xpath: "//ion-label[contains(.,'Log Out')]" }
	SIGN_IN = { xpath: '/html/body/div[2]/div[1]/div[4]/ul[1]/li[2]/a' }
	GMAIL_EMAIL_FIELD = { xpath: '//*[@id="identifierId"]' }
	GMAIL_OPEN_EMAIL = { xpath: '//*[@id=":1"]/div/div' }
	GMAIL_RESET_PASSWD_LINK = { xpath: '//a/button' }
	GMAIL_AGENT_CONFIRM_EMAIL = { xpath: '//*[@id=":57"]/div[1]/div[1]/div[1]/div[2]/div/div' }
	GMAIL_AGENT_JOIN_EMAIL = { xpath: '//a/button' }
	GMAIL_NEW_PASSWORD_FIELD = { xpath: '//*[@id="password"]/input' }
	GMAIL_CONFIRM_NEW_PASSWORD_FIELD = { xpath: '//*[@id="verifyPassword"]/input' }
	CONFIRM_PASSWORD_DONE_BUTTON = { xpath: '//*[@id="resetPassword"]' }
	OUTLOOK_EMAIL_FIELD = { xpath: '//*[@id="i0116"]' }
	OUTLOOK_KEEP_ME_IN = { xpath: '//*[@id="idChkBx_PWD_KMSI0Pwd"]' }
	OUTLOOK_EMAIL_FIELD_2 = { xpath: '/html/body/div/form[1]/div/div/div[1]/div[3]/div/div/div/div[2]/div[2]/div/input[1]' }
  SKIP_FOR_NOW_TEXT = { xpath: '/html/body/div/form[1]/div/div/div[1]/div[3]/div/div[2]/div/div[3]/a' }
	OUTLOOK_NEXT_BUTTON = { xpath: '//*[@id="idSIButton9"]' }
	OUTLOOK_NEXT_BUTTON_2 = { xpath: '//*[@id="idSubmit_ProofUp_Redirect"]' }
	OUTLOOK_PASSWORD_FIELD = { xpath: '//*[@id="i0118"]' }
	OUTLOOK_SIGN_IN_BUTTON = { xpath: '//*[@id="idSIButton9"]' }
	CONT_TO_OUTLOOK = { xpath: '//*[@id="tilesHolder"]/div[1]/div/div' }
	OUTLOOK_OTHER_TAB = { xpath: '//*[@id="Pivot33-Tab1"]' }
	OUTLOOK_RESET_PASSWD = { xpath: '//*[@id="app"]/div/div[2]/div[1]/div/div[3]/div[2]/div/div[3]/div/div/div/div/div[2]/div/div[1]/div/div/div/div[3]/div/div/div/table/tbody/tr/td[2]/div/table/tbody/tr/td/table/tbody/tr[3]/td/a' }
	OUTLOOK_DIFF_ACCOUNT = { xpath: '/html/body/div/form[1]/div/div/div[2]/div[3]/div/div[2]/div/div[3]/a' }
	OUTLOOK_STAY_SIGNED_IN_NO_BUTTON = { xpath: '//*[@id="idBtn_Back"]' }
	OUTLOOK_STAY_SIGNED_IN_YES_BUTTON = { xpath: '//*[@id="idSIButton9"]' }
	OUTLOOK_WORK_ACCOUNT_BUTTON = { xpath: '//*[@id="aadTile"]' }
	OUTLOOK_PERS_ACCOUNT_BUTTON = { xpath: '//*[@id="msaTileHint"]/small' }
	OUTLOOK_SIGN_IN_BUTTON_2 = { xpath: '//*[@id="idSIButton9"]' }
	OUTLOOK_ICON = { xpath: '//*[@id="ShellMail_link"]/div' }
	GMAIL_PASSWORD_FIELD = { xpath: '//input[@name="password"]' }
	NEW_LOGIN_EMAIL_FIELD = { xpath: '' }
	MANAGE_ROUTING_SETTINGS = { xpath: "//ion-button[contains(.,'Manage')]" }
	ADD_TAG_1 = { xpath: '//*[@id="companyUnitSupportTags"]/div/app-company-unit-support-tag/ion-content/ion-item-group/ion-input/input' }
	ROUTING_TAGS_DONE_BUTTON = { xpath: "//ion-button[contains(.,'Done')]" }
	ADD_TAG_2 = { xpath: '//*[@id="companyUnitSupportTags"]/div/app-company-unit-support-tag/ion-content/ion-item-group/ion-input/input' }
	TEAMS_BUTTON_1 = { xpath: '//*[@id="TeamUpdateComponent"]/div/app-team-update/ion-content/ion-item-group/form/ion-item-group[1]/ion-item/ion-input/input' }
	TEAM_1 = { xpath: '//*[@id="teamsNav"]/app-teams/ion-content/ion-slides/div/ion-slide[1]/ion-list/app-team-item[1]/ion-nav-link/ion-card/ion-title' }
	REMOVE_CENTANE_TAG = { xpath: '//*[@id="companyUnitSupportTags"]/div[2]/app-company-unit-support-tag/ion-content/ion-item-group/ion-chip[3]/ion-icon' }
	REMOVE_GCUWA_TAG_2 = { xpath: '//*[@id="companyUnitSupportTags"]/div[2]/app-company-unit-support-tag/ion-content/ion-item-group/ion-chip[2]/ion-icon' }
	REMOVE_GCUWA_TAG_1 = { xpath: '//*[@id="TeamUpdateComponent"]/div[2]/app-team-update/ion-content/ion-item-group/form/ion-item-group[1]/ion-item/ion-chip[2]/ion-icon' }
	TYPE_ROUTING_TAG_1 = { xpath: '//*[@id="TeamUpdateComponent"]/div/app-team-update/ion-content/ion-item-group/form/ion-item-group[1]/ion-item/ion-input/input' }
	SELECT_ROUTING_TAG_1 = { xpath: '//*[@id="assignWithChips"]/div/app-assign-with-chips/ion-content/ion-list/ion-item-group/div/ion-item/ion-checkbox' }
	ASSIGN_ROUTING_TAGS_SAVE = { xpath: '//*[@id="assignWithChips"]/div[2]/app-assign-with-chips/ion-footer/ion-toolbar/ion-buttons/ion-button[2]' }
	ASSIGN_TEAM_MEMBERS = { xpath: '//*[@id="TeamCreateComponent"]/div[2]/app-team-create/ion-content/ion-item-group/form/ion-item-group[2]/ion-item/ion-input/input' }
	SEARCH_TEAM_MEMBER = { xpath: '//*[@id="assignWithChipsUsers"]/div[2]/app-assign-with-chips/ion-content/ion-item/ion-searchbar/div/input' }
	SELECT_TEAM_MEMBER = { xpath: '//*[@id="assignWithChipsUsers"]/div[2]/app-assign-with-chips/ion-content/ion-list/ion-item-group/div/ion-item/ion-checkbox' }
	ASSIGN_MEMBER = { xpath: '//*[@id="assignWithChipsUsers"]/div[2]/app-assign-with-chips/ion-footer/ion-toolbar/ion-buttons/ion-button[2]' }
	CREATE_TEAM_BUTTON = { xpath: '//*[@id="TeamCreateComponent"]/div[2]/app-team-create/ion-footer/ion-toolbar/ion-buttons/ion-button[2]' }
	SEARCH_ROUTING_TAG = { xpath: '//*[@id="assignWithChips"]/div/app-assign-with-chips/ion-content/ion-item/ion-searchbar/div/input' }
	SAVE_ROUTING_TAG = { xpath: '//*[@id="assignWithChips"]/div/app-assign-with-chips/ion-footer/ion-toolbar/ion-buttons/ion-button[2]' }
	UPDATE_TEAM_BUTTON = { xpath: '//*[@id="TeamUpdateComponent"]/div/app-team-update/ion-footer/ion-toolbar/ion-buttons/ion-button[2]' }
	TEAM_DROP_DOWN = { xpath: '//ion-button[2]' }
	DELETE_TEAM = { xpath: "//ion-label[contains(.,'Delete Team')]" }
	CONFIRM_DELETE_TEAM = { xpath: "//span[contains(.,'Delete')]" }
	TEAM_2 = { xpath: '//*[@id="teamsNav"]/app-teams/ion-content/ion-slides/div/ion-slide[1]/ion-list/app-team-item[2]/ion-nav-link/ion-card/ion-avatar/img' }
	TEAM_EDIT_BUTTON = { xpath: "//ion-nav[@id='teamsNav']/app-team-details/app-header/ion-header/ion-toolbar/ion-buttons[2]/ion-button" }
	TEAM_EDIT_BUTTON_1 = { xpath: '//*[@id="teamsNav"]/app-team-details[2]/app-header/ion-header/ion-toolbar/ion-buttons[2]/ion-button[1]' }
	TYPE_ROUTING_TAG_2 = { xpath: '//*[@id="TeamUpdateComponent"]/div/app-team-update/ion-content/ion-item-group/form/ion-item-group[1]/ion-item/ion-input/input' }
	SELECT_ROUTING_TAG_2 = { xpath: '//*[@id="assignWithChips"]/div/app-assign-with-chips/ion-content/ion-list/ion-item-group/div/ion-item/ion-checkbox' }
	UPDATE_BUTTON_2 = { xpath: '//*[@id="assignWithChips"]/div/app-assign-with-chips/ion-footer/ion-toolbar/ion-buttons/ion-button[2]' }
	WEB_MESSAGE_CONVERSATION = { xpath: '' }
	QA_WEB_WIDGET = { xpath: '//*[@id="higuru-webchat"]/div/div' }
	QA_WEB_WIDGET_TEXT = { xpath: '//*[@id="higuru-webchat"]/div/div/div[1]/div[3]/div[2]/div/a' }
	WEBMESSAGE_ICON_1 = { xpath: '//ion-item-group/ion-item/ion-icon' }
	WEBMESSAGE_ICON_2 = { xpath: '//ion-item-group/ion-item[2]/ion-icon' }
	WEBMESSAGE_ICON_3 = { xpath: '//ion-item-group/ion-item[3]/ion-icon' }
	WEBMESSAGE_ICON_4 = { xpath: '//ion-item-group/ion-item[4]/ion-icon' }
	PRECHAT_FORM_NAME_FIELD = { xpath: '//*[@id="preChatForm"]/label[1]/input' }
	PRECHAT_FORM_EMAIL_FIELD = { xpath: '//*[@id="preChatForm"]/label[2]/input' }
	PRECHAT_FORM_MOBILE_FIELD = { xpath: '//*[@id="preChatForm"]/label[3]/input' }
	START_CHAT_BUTTON = { xpath: '//*[@id="higuru-webchat"]/div/div/div[1]/div[2]/div/div[2]/button' }
	QA_WEB_WIDGET_CHAT_FIELD = { xpath: '//*[@id="higuru-webchat"]/div/div/div[1]/div[3]/div[1]/div/div/div[1]' }
	QA_INBOUND_TAB = { xpath: "//ion-segment-button[contains(.,'Inbound')]" }
	OPEN_THE_CHAT = { xpath: '//ion-label/ion-label' }
	TRANSFER_BUTTON = { xpath: '//ion-tab-button[2]/ion-icon' }
	QA_TEST_BOT = { xpath: '//ion-item/ion-card/ion-avatar/img' }
	GCUWA_TAG = { xpath: '//*[@id="mat-menu-panel-3"]/div/button' }
	CENTANE_TAG = { xpath: '//ion-radio' }
	OPEN_CHAT_CONVO_HISTORY = { xpath: "//ion-note[contains(.,'Open')]" }
	VIEW_CUSTOMER_INFO = { xpath: '//ion-toolbar/ion-item/ion-label/ion-label' }
	CLOSE_CUSTOMER_INFO = { xpath: '//ion-nav-link/ion-button' }
	RESOLVED_CHAT_CONVO_HISTORY = { xpath: "//ion-note[contains(.,'Resolved')]" }
	NEW_LOGIN_PASSWORD= { xpath: '' }
	SELECT_CONVO_TOPIC_TAG= { xpath: "//ion-modal[@id='assignSupportQueryTopicTags']/div[2]/app-assign-support-query-topic-tags/ion-content/ion-list/ion-item-group/div/ion-item/ion-checkbox" }
	SEARCH_CONVO_TOPIC_TAG= { xpath: '//*[@id="assignSupportQueryTopicTags"]/div[2]/app-assign-support-query-topic-tags/app-header/ion-header/ion-toolbar[2]/ion-searchbar/div/input' }
	PASSWORD_NEXT_BUTTON = { xpath: '//*[@id="passwordNext"]/span/span' }
	NEW_PASSWORD_DONE_BUTTON = { xpath: "//ion-button[@id='resetPassword']" }
	HIGURU_BUTTON = { css: 'li:nth-child(2) .higuru-button-bordered' }
	HIGURU_COMPANY_UNIT = { xpath: '/html/body/app-root/ion-app/ion-router-outlet/app-login-container/ion-content/ion-router-outlet/app-companies-container/ion-grid/ion-row/ion-card/ion-card-content/ion-content/ion-list/app-company-item[2]/ion-item/ion-button' }
	COMPANY_UNIT_SETTINGS = { xpath: '/html/body/app-root/ion-app/ion-router-outlet/app-home-container/ion-content/ion-split-pane/ion-menu/app-main-menu/ion-footer/ion-toolbar/ion-item/ion-label' }
	COMPANY_UNIT_SETTINGS_2 = { xpath: '/html/body/app-root/app-home/div/div/app-side-menu/div[2]/ul' }
	ROUTING_TAG_UPGRADE = { xpath: '//*[@id="upgrade-btn-ga-2"]/div' }
	DISMISS_PLAN_SELECTION = { xpath: '//app-billing-plans/app-header/ion-header/ion-toolbar/ion-buttons/ion-button' }
	CONVERSATION_TOPIC_UPGRADE = { xpath: '//*[@id="upgrade-btn-ga-2"]/div' }
	OFFLINE_EMAIL_TOGGLE = { xpath: '//ion-toggle' }
	USER_INACTIVITY_TOGGLE = { xpath: '//ion-item[4]/ion-toggle' }
	CANNED_REPLIES_TOGGLE = { xpath: '//ion-item[6]/ion-toggle' }
	EMAIL_TRANSCRIPTS_TOGGLE = { xpath: '//ion-item[7]/ion-toggle' }
	SETTINGS_TAB = { xpath: '//*[@id="home-content"]/app-company-unit-info-container/app-header/ion-header/ion-toolbar[2]/ion-segment/ion-segment-button[2]' }
	CONVERSATION_RESOLVE_SLIDER = { xpath: "//ion-label[contains(.,'Conversation Expiry')]" }
	CONVERSATION_RESOLVE_SLIDER_TIME = { xpath: "//ion-range" }
	SELECT_INBOUND_CHAT = { xpath: '/html/body/app-root/ion-app/ion-router-outlet/app-agent-interface-page/ion-content/ion-split-pane/ion-menu/app-rooms-container/ion-content/ion-slides/div/ion-slide[1]/ion-list/ion-content/app-room-item/ion-item/ion-label/ion-text' }
	CLOSE_NOTIFICATION = { xpath: '/html/body/app-root/app-home/app-notification-bar/div/div[3]' }
	CLOSE_NOTIFICATION_2 = { xpath: '/html/body/app-root/app-home/app-header-main/app-notification-bar/div/div[2]/span[3]/button' }
	CLOSE_NOTIFICATION_CONVO_PAGE = { xpath: '/html/body/app-root/app-agent-interface-page/div[1]/app-notification-bar/div/div[3]' }
	CONVERSATION_COUNT_ONE = { xpath: '//*[@id="sidebar-wrapper"]/div[2]/ul/li[2]/div/span' }
	CONVERSATIONS_TAB = { xpath: "//ion-item[contains(.,'Conversations')]" }
	INBOUND_TITLE_TEXT = { xpath: "//ion-segment-button[contains(.,'Inbound')]" }
	INBOUND_TEXT_BODY = { xpath: "//ion-label[contains(.,'No New Conversations')]" }
	INBOUND_GOT_IT_BUTTON = { xpath: '//*[@id="walkModal"]/div/app-walkthrough-agent-interface/ion-content/ion-item-group/ion-item[3]/ion-button' }
	OUTBOUND_GOT_IT_BUTTON = { xpath: '//*[@id="walkModal"]/div/app-walkthrough-agent-interface/ion-content/ion-item-group/ion-item[3]/ion-button' }
	OUTBOUND_TITLE_TEXT = { xpath: "//ion-segment-button[contains(.,'Outbound')]" }
	OUTBOUND_TEXT_BODY = { xpath: "//ion-label[contains(.,'No Outstanding Responses')]" }
	CONVO_NAVIGATION_BUTTON = { xpath: '/html/body/app-root/ion-app/ion-router-outlet/app-agent-interface-page/app-header-main/ion-header/ion-toolbar/ion-avatar[2]/img' }
	INBOUND_TAB = { xpath: "//span[contains(.,'Inbound')]" }
	OUTBOUND_TAB = { xpath: "//span[contains(.,'Outbound')]" }
	PUBLIC_CHAT_TAB = { xpath: "//ion-segment-button[contains(.,'Public')]" }
	DOWNLOAD_ICON = { xpath: '//ion-tab-button/ion-icon' }
	DOWNLOAD_CURRENT_TRANSCRIPTS = { xpath: "//ion-item[contains(.,'Current Transcript')]" }
	CURRENT_TRANSCRIPT = { xpath: "//app-list-popover/ion-list/ion-item/ion-label" }
	FULL_TRANSCRIPTS_BUTTON = { xpath: "//ion-label[contains(.,'Full Transcript')]" }
	RESOLVE_ICON = { xpath: '//*[@id="agent-content"]/app-chat/app-chat-header/div/button[2]/span' }
	RESOLVE_AND_DOWNLOAD = { xpath: '//ion-item[2]/ion-radio' }
	RESOLVE_AND_DOWNLOAD_TOAST = { xpath: "//ion-toast[@id='ion-overlay-1']" }
	RESOLVE_AND_DOWNLOAD_TOAST_2 = { xpath: "xpath=//ion-toast" }
	HI_GURU_AVATAR = { xpath: '/html/body/app-root/ion-app/ion-router-outlet/app-agent-interface-page/app-header-main/ion-header/ion-toolbar/ion-avatar[1]' }
	CONVO_HISTORY_PUBLIC_TAB = { xpath: '//*[@id="consumerPlatformsNav"]/app-consumer-platform-history-container/app-header/ion-header/ion-toolbar[2]/ion-segment/ion-segment-button[3]' }
	CONVO_HISTORY_PUBLIC_CHAT = { xpath: '//ion-nav[@id="consumerPlatformsNav"]/app-consumer-platform-history-container/ion-content/ion-list/app-consumer-platform-history-item/ion-nav-link/ion-item/div/div/div[2]' }
	CONVO_HISTORY_DOWNLOAD_ICON = { xpath: '//ion-nav[@id="consumerPlatformsNav"]/app-chat-history/div/div/app-header/ion-header/ion-toolbar/ion-buttons[2]/ion-tab-button/ion-icon' }
  #CURRENT_TRANSCRIPT_2 = { xpath: '' }
	MAIN_MENU = { css: '.logo-small' }
	RESPONSIVENESS_TITLE = { xpath: '//ion-label[contains(.,"Responsiveness")]' }
	AGENT_ACTIVITY_TAB = { xpath: "//ion-segment-button[contains(.,'Agent Activity')]" }
	LAST_MONTH = { xpath: '//ion-header/ion-toolbar/ion-select' }
	STATS_TAB = { xpath: "//ion-label[contains(.,'Stats')]" }
	STATS_VIEW_MORE = { xpath: "//ion-text[contains(.,'View More')]" }
	LAST_WEEK_STATS_2 = { xpath: '//*[@id="ion-overlay-10"]/div[2]/div[2]/app-list-popover/ion-list/ion-item[2]/ion-label' }
	LAST_MONTH_STATS_2 = { xpath: '//*[@id="ion-overlay-12"]/div[2]/div[2]/app-list-popover/ion-list/ion-item[3]/ion-label' }
	LAST_YEAR_STATS_2 = { xpath: '//*[@id="ion-overlay-14"]/div[2]/div[2]/app-list-popover/ion-list/ion-item[4]/ion-label' }
	TODAY_STATS_2 = { xpath: '//*[@id="ion-overlay-16"]/div[2]/div[2]/app-list-popover/ion-list/ion-item[1]/ion-label' }
	STATS_HIGHEST_RESOLVED = { xpath: "//ion-label[contains(.,'Highest')]" }
	RESOLVE_DROP_DOWN = { xpath: '//ion-tab-button[3]/ion-icon' }
	STATS_DROP_DOWN_BUTTON = { xpath: '//ion-header/ion-toolbar/ion-item/ion-button' }
	CONVERSATION_VOLUME_DROP_DOWN = { xpath: '//app-total-dm-stats/app-header/ion-header/ion-toolbar/ion-item/ion-button' }
	CONVO_VOLUME_TODAY = { xpath: '//app-list-popover/ion-list/ion-item/ion-label' }
	CONVO_VOLUME_LAST_WEEK = { xpath: '//app-list-popover/ion-list/ion-item[2]' }
	CONVO_VOLUME_LAST_YEAR = { xpath: '//app-list-popover/ion-list/ion-item[4]/ion-label' }
	CONVO_VOLUME_CUSTOM_DATE = { xpath: "//ion-item[contains(.,'Custom Date')]" }
	CONVO_VOLUME_LAST_MONTH = { xpath: '//app-list-popover/ion-list/ion-item[3]/ion-label' }
	STATS_RESOLVED_DROP_DOWN = { xpath: '//ion-col[2]/ion-item/ion-button' }
	CUSTOM_DATE = { xpath: '//*[@id="ion-overlay-5"]/div[2]/div[2]/app-list-popover/ion-list/ion-item[5]/ion-label' }
	DATE_DROP_DOWN_BUTTON = { xpath: '//*[@id="mediaCarouselModal"]/div[2]/app-date-picker/ion-content/div/sat-calendar/sat-calendar-header/div/div/button[1]/span/div' }
	YEAR_2020_BUTTON = { xpath: '//*[@id="mediaCarouselModal"]/div[2]/app-date-picker/ion-content/div/sat-calendar/div/sat-multi-year-view/table/tbody/tr[2]/td[1]/div' }
	AUGUST_BUTTON = { xpath: '//*[@id="mediaCarouselModal"]/div[2]/app-date-picker/ion-content/div/sat-calendar/div/sat-year-view/table/tbody/tr[3]/td[4]/div' }
	CHOOSE_DATE_1_BUTTON = { xpath: '//*[@id="mediaCarouselModal"]/div[2]/app-date-picker/ion-content/div/sat-calendar/div/sat-month-view/table/tbody/tr[4]/td[2]/div' }
	CHOOSE_DATE_2_BUTTON = { xpath: '//*[@id="mediaCarouselModal"]/div[2]/app-date-picker/ion-content/div/sat-calendar/div/sat-month-view/table/tbody/tr[2]/td[4]/div' }
	NEXT_MONTH_BUTTON = { xpath: '//*[@id="mediaCarouselModal"]/div[2]/app-date-picker/ion-content/div/sat-calendar/sat-calendar-header/div/div/button[3]' }
	CUSTOM_DATE_APPLY_BUTTON = { xpath: '//*[@id="mediaCarouselModal"]/div[2]/app-date-picker/ion-footer/ion-toolbar/ion-buttons/ion-button[2]' }
	EXPORT_BUTTON = { xpath: "//ion-button[contains(.,'Export')]" }
	EXPORT_PDF_BUTTON = { xpath: "//ion-label[contains(.,'PDF')]" }
	STATS_REAL_TIME = { xpath: '//*[@id="home-content"]/app-stats-container/ion-content/ion-slides/div/ion-slide[1]/ion-list/app-realtime-overview/ion-list-header' }
	TOP_CONVO_TOPICS = { xpath: '//*[@id="statsSlides"]/div/ion-slide[1]/ion-list/ion-item-group/app-stats-item[4]/ion-card/app-pie-chart/div[1]/span' }
	CONVO_RESOLUTION_TYPE = { xpath: '//*[@id="statsSlides"]/div/ion-slide[1]/ion-list/ion-item-group/app-stats-item[6]/ion-card/app-pie-chart/div[1]/span' }
	CHANNELS_TAB = { xpath: "//ion-label[contains(.,'Channels')]" }
	ACTIVE_CHANNELS_TAB = { xpath: "//ion-segment-button[contains(.,'Active')]" }
	INACTIVE_CHANNELS_TAB = { xpath: "//ion-segment-button[contains(.,'Inactive')]" }
	SEARCH_YOUR_CHANNELS = { css: '.searchbar-input' }
	EMPTY_CHANNELS_AVATAR = { xpath: '//*[@id="channelsNav"]/app-channels-container/ion-content/ion-slides/div/ion-slide[1]/ion-item-group/ion-avatar/img' }
	WEB_MESSAGE_SEND_LINK = { xpath: '//*[@id="linkWebMessage"]' }
	WEB_MESSAGE_DONE_BUTTON = { xpath: '//*[@id="channelsNav"]/app-web-message-container/app-header/ion-header/ion-toolbar/ion-buttons[2]/ion-nav-link/ion-button' }
	WEB_MESSAGE_NAME_FIELD = { xpath: '//*[@id="siteName"]/input' }
	ADD_WEBMESSAGE_POP_UP = { xpath: '//*[@id="webSdkIntroductionModal"]/div[2]/app-web-sdk-introduction/ion-footer/ion-button' }
	SWIPE_WEBMESSAGE_POP_UP = { xpath: '//ion-button[2]' }
	ADD_WEBMESSAGE_2 = { xpath: '' }
	ADD_WEBMESSAGE_1 = { xpath: '//*[@id="channelsNav"]/app-platform-details/ion-content/ion-list/ion-item/ion-label/ion-button' }
	WEB_MESSAGE_ADD_CHANNEL = { xpath: '//*[@id="channelsNav"]/app-platform-details/ion-content/ion-list/ion-item/ion-label/ion-button' }
	WEB_MESSAGE_ADD_CHANNEL_2 = { xpath: '//*[@id="webSDKComponent"]/div[2]/app-web-sdk-add/ion-footer/ion-toolbar/ion-buttons/ion-button[2]' }
	CHANNEL_DISPLAY_NAME_FIELD = { xpath: '//*[@id="webSDKComponent"]/div[2]/app-web-sdk-add/ion-content/ion-item-group/form/ion-item[1]/ion-input/input' }
	SETUP_SELECT_JAVASCRIPT = { xpath: '//*[@id="webSDKComponent"]/div[2]/app-web-sdk-add/ion-content/ion-item-group/form/ion-item-group/ion-item-group[1]/ion-card[1]' }
	SETUP_SELECT_WORDPRESS = { xpath: '//*[@id="webSDKComponent"]/div[2]/app-web-sdk-add/ion-content/ion-item-group/form/ion-item-group/ion-item-group[1]/ion-card[2]' }
	INSTALLATION_INSTR_EMAIL_FIELD = { xpath: '//*[@id="webSDKComponent"]/div[2]/app-web-sdk-add/ion-content/ion-item-group/form/ion-item[2]/ion-input/input' }
	DOWNLOAD_PLUGIN = { xpath: '//*[@id="webSDKComponent"]/div[2]/app-web-sdk-add/ion-content/ion-item-group/form/ion-item-group/ion-item-group[2]/ion-buttons/ion-button' }
	SELECT_WEB_MESSAGE = { xpath: '//*[@id="channelsNav"]/app-channel-select/ion-content/ion-list/ion-item-group[1]/app-platform-item/ion-nav-link/ion-card/ion-avatar/img' }
	ADD_CHANNEL_BUTTON = { xpath: '//*[@id="channelsNav"]/app-channels-container/app-header/ion-header/ion-toolbar[1]/ion-buttons/ion-nav-link/ion-button' }
	TWITTER_CHANNEL = {xpath: '//*[@id="channelsNav"]/app-channel-select/ion-content/ion-list/ion-item-group[2]/app-platform-item[2]/ion-nav-link/ion-card/ion-avatar/img'}
	TEXT_SMS_CHANNEL = {xpath: '//*[@id="channelsNav"]/app-channel-select/ion-content/ion-list/ion-item-group[3]/app-platform-item[1]/ion-nav-link/ion-card/ion-avatar/img'}
	WHATSAPP_CHANNEL = {xpath: '//*[@id="channelsNav"]/app-channel-select/ion-content/ion-list/ion-item-group[2]/app-platform-item[4]/ion-nav-link/ion-card/ion-avatar/img'}
	UPGRADE_TWITTER = {xpath: '//*[@id="channelsNav"]/app-platform-details/ion-content/ion-list/ion-item/ion-label/ion-button'}
	UPGRADE_TEXT_SMS_CHANNEL = {xpath: '//*[@id="channelsNav"]/app-platform-details/ion-content/ion-list/ion-item/ion-label/ion-button'}
	UPGRADE_WHATSAPP_CHANNEL = {xpath: '//*[@id="channelsNav"]/app-platform-details/ion-content/ion-list/ion-item/ion-label/ion-button'}
	CHANNEL_DROP_DOWN = {xpath: "//ion-nav[@id='channelsNav']/app-channels-container/ion-content/ion-slides/div/ion-slide/ion-list/app-channel-item[4]/ion-item/ion-button"}
	CHANNEL_DROP_DOWN_2 = {xpath: "//ion-nav[@id='channelsNav']/app-channels-container/ion-content/ion-slides/div/ion-slide/ion-list/app-channel-item[3]/ion-item/ion-button"}
	CHANNEL_REAUTHORISE = {xpath: "//ion-item[contains(.,'Reauthorise Channel')]"}
	ADD_TWITTER_CHANNEL_BUTTON = {xpath: '//*[@id="channelsNav"]/app-platform-details/ion-content/ion-list/ion-item/ion-label/ion-button'}
	CHANNEL_OPTIONS = {xpath: '//*[@id="channelsNav"]/app-channels-container/ion-content/ion-slides/div/ion-slide[1]/ion-list/app-channel-item/ion-item/ion-button'}
	DELETE_CHANNEL = {xpath: '//*[@id="ion-overlay-3"]/div/div[2]/app-list-popover/ion-list/ion-item[2]'}
	CONFIRM_PREMIUM_TWITTER = {xpath: '//*[@id="premiumChannelModal"]/div[2]/app-premium-channel/ion-footer/ion-toolbar/ion-buttons/ion-button[2]'}
  CONFIRM_DELETE_BUTTON = {xpath: '//*[@id="ion-overlay-4"]/div/div[3]/button[2]'}
	CONFIRM_BUTTON = {xpath: '//*[@id="premiumChannelModal"]/div/app-premium-channel/ion-footer/ion-toolbar/ion-buttons/ion-button[2]'}
	TWITTER_EMAIL_INPUT = {xpath: '//*[@id="username_or_email"]'}
	TWITTER_PASSWORD_INPUT = {xpath: '//*[@id="password"]'}
	AUTHORIZE_APP_BUTTON = {xpath: '//*[@id="allow"]'}
	ADD_BUTTON = {xpath: '//*[@id="platformPermissionModal"]/div/app-platform-permissions/ion-footer/ion-toolbar/ion-buttons/ion-button[2]'}
	TEAMS_TAB = { xpath: "//ion-label[contains(.,'Teams')]" }
	CANNED_REPLIES_TAB = { xpath: "//ion-label[contains(.,'Canned Replies')]" }
	INACTIVE_TEAMS_TAB = { xpath: "//ion-segment-button[contains(.,'Inactive')]" }
	UPGRADE_TEAMS_BUTTON = { xpath: '//*[@id="upgrade-btn-ga-11"]/div' }
	UPGRADE_BILLING_PAGE = { xpath: "//ion-button[contains(.,'Upgrade')]" }
	UPGRADE_ACCOUNT = { xpath: '//app-upgrade-button/div' }
	TEAM_TWO = { xpath: '//*[@id="teamsNav"]/app-teams/ion-content/ion-slides/div/ion-slide[1]/ion-list/app-team-item[2]/ion-nav-link/ion-card' }
	ADD_TEAM_BUTTON = { xpath: '//*[@id="teamsNav"]/app-teams/app-header/ion-header/ion-toolbar[1]/ion-buttons/ion-button' }
	TEAM_NAME = { xpath: '//*[@id="TeamCreateComponent"]/div[2]/app-team-create/ion-content/ion-item-group/form/ion-item[1]/ion-input/input' }
	TEAM_DESCRIPTION = { xpath: '//*[@id="TeamCreateComponent"]/div[2]/app-team-create/ion-content/ion-item-group/form/ion-item[2]/ion-input/input' }
	ASSIGN_ROUTING_TAG = { xpath: '//*[@id="TeamCreateComponent"]/div[2]/app-team-create/ion-content/ion-item-group/form/ion-item-group[1]/ion-item/ion-input/input' }
	PEOPLE_TAB = { xpath: "//ion-item[contains(.,'People')]" }
	DOCUMENTS_LIBRARY_TAB = { xpath: "//ion-label[contains(.,'Document Library')]" }
	ADD_DOCUMENT_BUTTON = { xpath: '//*[@id="home-content"]/app-document-container/app-header/ion-header/ion-toolbar[1]/ion-buttons/ion-button' }
	ADD_ATTACHMENT = { css: '.title-button' }
	UPLOAD_BUTTON = { xpath: '//*[@id="upload-btn"]' }
	QA_DASHBOARD_TEXT = { xpath: '//*[@id="home-content"]/app-dashboard-container/app-header/ion-header/ion-toolbar/ion-title' }
	QA_LOGIN_TEXT = { xpath: '/html/body/app-root/ion-app/ion-router-outlet/app-login-container/ion-content/ion-router-outlet/app-login/ion-grid/ion-row/ion-card/ion-card-title' }
	GOT_IT_WALK_THROUGH = { xpath: "//ion-button[contains(.,'Got It')]" }
	UPLOAD_ICON = { xpath: '//*[@id="doc-upload-overlay"]/div[4]/div[1]/img' }
	FAQ_TAB = { xpath: '//*[@id="sidebar-wrapper"]/div[2]/ul/li[8]/span[2]/a' }
	BILLING = { xpath: "//ion-label[contains(.,'Billing')]" }
	VIEW_PLANS_BUTTON = { xpath: "//ion-button[contains(.,'View Plans')]" }
	GO_FREE_BUTTON = { xpath: "//ion-button[contains(.,'Go Free')]" }
	CANCEL_DOWNGRADE = { xpath: "//span[contains(.,'Cancel')]" }
	BILLING_PAYMENT_METHOD = { xpath: "//ion-segment-button[contains(.,'Payment Method')]" }
	GO_ENTERPRISE_BUTTON = { xpath: "//ion-button[contains(.,'Go Enterprise')]" }
	BILLING_INFO_BUTTON = { xpath: "//ion-segment-button[contains(.,'Billing Info')]" }
	AGENT_IMAGE_CONVERSATION_VIEW = { xpath: '//ion-avatar[4]/img' }
	AGENT_IMAGE = { xpath: '/html/body/app-root/ion-app/ion-router-outlet/app-home-container/app-header-main/ion-header/ion-toolbar/ion-avatar[2]/img[1]' }
	I_FORGOT_MY_PASSWORD = { xpath: '//a[contains(text(),"I forgot my Password")]' }
	SUPPORT_AND_FEEDBACK = { xpath: '//*[@id="ion-overlay-1"]/div[2]/div[2]/app-account-user/ion-list/ion-item[5]' }
	HIGURU_WEB_ICON = { xpath: '//*[@id="webChat"]/div/div/div/img' }
	FEEDBACK_QUICK_REPLY_BUTTON = { xpath: '//*[@id="webChat"]/div/div/div[1]/div[2]/div[2]/div[2]/button[4]' }
	BILLING_INFO = { xpath: '//*[@id="mat-tab-label-0-2"]/div' }
	COMPANY_NAME = { css: '.company-name' }
	GO_BACK_TO_DASHBOARD = { xpath: '//ion-avatar[3]/img' }
	SECONDARY_COMPANY_UNIT = { xpath: '//*[@id="home-content"]/app-company-units-container/ion-content/ion-list/app-company-unit[2]/ion-card/ion-avatar/img' }
	MAIN_COMPANY_UNIT = { xpath: '/html/body/app-root/ion-app/ion-router-outlet/app-home-container/ion-content/ion-split-pane/ion-menu/app-main-menu/ion-toolbar/ion-avatar/img' }
	COMPANY_UNIT_INFO = { xpath: '//*[@id="home-content"]/app-company-units-container/ion-content/ion-list/app-company-unit/ion-card/ion-avatar/img' }
	COMPANY_UNIT_CHANGE_BUTTON = { xpath: '//*[@id="home-content"]/app-company-unit-info-container/ion-content/ion-slides/div/ion-slide[1]/app-company-unit-details/ion-content/ion-list/form/ion-item-group[1]/ion-item-group/ion-item/ion-buttons/ion-button' }
	COMPANY_UNIT_INFO_NAME_FIELD = { xpath: '//ion-input/input' }
	CREATE_COMPANY_UNIT = { xpath: '//*[@id="ion-overlay-1"]/div[2]/div[2]/app-list-popover/ion-list/ion-item[1]/ion-label' }
	COMPANY_UNIT_INFO_SAVE_BUTTON = { xpath: '//*[@id="home-content"]/app-company-unit-info-container/ion-content/ion-slides/div/ion-slide[1]/app-company-unit-details/ion-content/ion-list/form/ion-item-group[1]/ion-item-group/ion-item/ion-buttons/ion-button[2]' }
	COMPANY_UNIT_IMAGE = {xpath: '/html/body/app-root/ion-app/ion-router-outlet/app-home-container/ion-content/ion-split-pane/ion-menu/app-main-menu/ion-toolbar/ion-avatar/img' }
	COMPANY_UNIT_DROP_DOWN = {xpath: '//*[@id="home-content"]/app-company-unit-info-container/app-header/ion-header/ion-toolbar[1]/ion-buttons/ion-button' }
	COMPANY_UNIT_SELECT = { xpath: '/html/body/app-root/ion-app/ion-router-outlet/app-login-container/ion-content/ion-router-outlet/app-company-unit-selection-container/ion-grid/ion-row/ion-card/ion-card-content/ion-content/ion-list/app-company-unit-item[1]/ion-item/ion-button' }
	DELETE_COMPANY_UNIT = { xpath: "//ion-label[contains(.,'Delete Company Unit')]" }
	CONFIRM_DELETE_COMPANY_UNIT = { xpath: "//span[contains(.,'Delete')]" }
	GO_BUTTON_COMPANY_UNIT_SELECT_ON_LOGIN = { css: 'li:nth-child(1) .higuru-button-bordered' }
	CONVO_EXPIRY_BAR = { xpath: '//*[@id="mat-tab-content-6-1"]/div/app-company-unit-settings/div/div[2]/div[6]/div[2]/div[2]/div/mat-slider/div/div[3]/div[3]' }
	NEW_COMPANY_UNIT = { xpath: '//*[@id="company-unit-selection-overlay"]/div[3]/div/div[1]/img' }
	BOTS_TAB = { xpath: "//ion-label[contains(.,'Bots')]" }
	CONTACTS_TAB = { xpath: "//ion-label[contains(.,'Contacts')]" }
	CONTACT_MENU = { xpath: '//ion-item/ion-button' }
	VIEW_CONTACT = { xpath: "//ion-label[contains(.,'View Contact')]" }
	VIEW_CHANNEL_SUBSCRIPTION = { xpath: '//div/ion-avatar/img' }
	CHANNEL_SUBSCRIPTION_UNSUBSCRIBED_TAB = { xpath: "//ion-segment-button[contains(.,'Unsubscribed')]" }
	CHANNEL_SUBSCRIPTION_SUBSCRIBED_TAB = { xpath: "//ion-segment-button[contains(.,'Subscribed')]" }
	CLOSE_CHANNEL_SUBSCRIPTION = { xpath: "//ion-button[contains(.,'close')]" }
	BACK_TO_CONTACTS = { xpath: '//app-consumer-details/app-header/ion-header/ion-toolbar/ion-buttons/ion-button' }
	UNREGISTERED_CONTACTS_TAB = { xpath: "//ion-segment-button[contains(.,'Unregistered')]" }
	REGISTERED_CONTACTS_TAB = { xpath: "//ion-segment-button[contains(.,'Contacts')]" }
	CREATE_CONTACT_BUTTON = { xpath: "//ion-button[contains(.,'Create Contact')]" }
	CONTACT_FULL_NAME_FIELD = { xpath: "//input[@name='ion-input-2']" }
	CONTACT_ORGANIZATION_FIELD = { xpath: "//input[@name='ion-input-3']" }
	CONTACT_EMAIL_FIELD = { xpath: "//input[@name='ion-input-4']" }
	CONTACT_PHONE_DROP_DOWN = { xpath: '//div/div/div' }
	SELECT_SOUTH_AFRICA = { xpath: "//span[contains(.,'South Africa')]" }
	WHATSAPP_SELECT_SOUTH_AFRICA = { xpath: "//ion-item-group[5]/ion-item-group/ion-item-group/ngx-intl-tel-input/div/div/div[2]/ul/li[2]" }
	CONTACT_PHONE_FIELD = { xpath: "//input[@id='phone']" }
	CONTACT_CHANNEL_DROP_DOWN = { xpath: "(//ion-input[@type='text'])[4]" }
	SKYPE_DROP_DOWN = { xpath: '//ion-item-group/img' }
	INSTA_DROP_DOWN = { xpath: '//ion-item-group/img' }
	TELEGRAM_DROP_DOWN = { xpath: '//ion-item-group/img' }
	WHATSAPP_DROP_DOWN = { xpath: '//*[@id="consumerCreateModal"]/div[2]/app-consumer-create/ion-content/ion-item-group/form/ion-item-group[5]/ion-item-group/ion-item-group/app-dropdown-with-images/ion-item-group/ion-item-group' }
	WHATSAPP_SELECT_COUNTRY_DROP_DOWN = { xpath: "//ion-item-group[5]/ion-item-group/ion-item-group/ngx-intl-tel-input/div/div/div/div[2]" }
	SELECT_WHATSAPP = { xpath: "//ion-text[contains(.,'WhatsApp')]" }
	SELECT_FACEBOOK = { xpath: "//ion-text[contains(.,'Facebook')]" }
	SELECT_GOOGLE_MY_BUSINESS = { xpath: "//ion-text[contains(.,'Google My Business')]" }
	GOOGLE_MY_BUSINESS_DROP_DOWN = { xpath: '//ion-item-group/img' }
	SELECT_INSTA = { xpath: "//ion-text[contains(.,'Instagram')]" }
	SELECT_SKYPE = { xpath: "//ion-text[contains(.,'Skype')]" }
	SELECT_TELEGRAM = { xpath: "//ion-text[contains(.,'Telegram')]" }
	SELECT_TWITTER = { xpath: "//ion-text[contains(.,'Twitter')]" }
	CONTACT_CHANNEL_FIELD = { xpath: "//input[@name='ion-input-5']" }
	DISMISS_CONTACTS_FORM = { xpath: "//app-consumer-create/app-header/ion-header/ion-toolbar/ion-buttons/ion-button" }
	ADD_CONTACT_BUTTON = { xpath: "//ion-footer/ion-toolbar/ion-buttons/ion-button[2]" }
	ADD_BOT = { xpath: '//*[@id="botsNav"]/app-bots-container/app-header/ion-header/ion-toolbar[1]/ion-buttons/ion-button' }
	BOT_NAME_FIELD = { xpath: '//*[@id="name"]/input' }
	CONCURRENT_CONVERSATION_LIMIT_TOGGLE = { xpath: '//ion-item[5]/ion-toggle' }
	CONVERSATION_LIMIT_REACHED_OK_BUTTON = { xpath: "//span[contains(.,'OK')]" }
	USER_INACTIVITY_INPUT = { xpath: '//div/ion-item/ion-input/input' }
	USER_INACTIVITY_INPUT_SAVE = { xpath: "//ion-button[contains(.,'Save')]" }
	BOT_OVERVIEW_FIELD = { xpath: '//*[@id="description"]/div/textarea' }
	CONVERSATION_LIMIT_FIELD = { xpath: '//ion-item-group[2]/div/ion-item/ion-input/input' }
	CONVERSATION_LIMIT_SAVE_BUTTON = { xpath: "//ion-button[contains(.,'Save')]" }
	BOT_PLATFORM = { xpath: '//*[@id="botIntegrationType"]/input' }
	HIGURU_BOT = { xpath: "//ion-label[contains(.,'hi.guru')]" }
	REQUEST_BUTTON = { xpath: '//*[@id="createBotModal"]/div/app-bot-create/ion-footer/ion-toolbar/ion-buttons/ion-button[2]' }
	HIGURU_USERNAME_FIELD = { xpath: '//*[@id="username"]/input' }
	HIGURU_PASSWORD_FIELD = { xpath: '//*[@id="password"]/input' }
	LINK_BUTTON = { xpath: '//*[@id="createBotModal"]/div/app-bot-create/ion-content/ion-item-group/form/ion-item[7]/ion-button' }
	HIGURU_WORKSPACE_FIELD = { xpath: '' }
	LEGAL_BOT = { xpath: '//*[@id="ion-overlay-3"]/div[2]/div[2]/app-list-popover/ion-list/ion-item[3]/ion-label' }
	SELECT_BOT = { xpath: '//*[@id="botObject"]/input' }
	ADD_LEGAL_BOT_BUTTON = { xpath: '//*[@id="createBotModal"]/div/app-bot-create/ion-footer/ion-toolbar/ion-buttons/ion-button[2]' }
	INACTIVE_BOT_TAB = { xpath: '//*[@id="botsNav"]/app-bots-container/app-header/ion-header/ion-toolbar[2]/ion-segment/ion-segment-button[2]' }
	ACTIVE_BOT_TAB = { xpath: "//ion-segment-button[contains(.,'Active')]" }
	INACTIVE_TEST_BOT = { xpath: '//*[@id="botsNav"]/app-bots-container/ion-content/ion-slides/div/ion-slide[2]/ion-list/app-bot-item/ion-nav-link/ion-card' }
	ACTIVE_TEST_BOT = { xpath: '//*[@id="botsNav"]/app-bots-container/ion-content/ion-slides/div/ion-slide[1]/ion-list/app-bot-item/ion-nav-link/ion-card' }
	OPEN_BOT = { css: '.ng-star-inserted > .hydrated > .md > .md > img' }
	BOT_MENU_BUTTON = { xpath: '//ion-button[2]' }
	ACTIVATE_BOT_BUTTON = { xpath: "//ion-label[contains(.,'Activate Bot')]" }
	DEACTIVATE_BOT_BUTTON = { xpath: "//ion-label[contains(.,'Deactivate Bot')]" }
	DELETE_BOT_BUTTON = { xpath: "//ion-label[contains(.,'Delete Bot')]" }
	CONFIRM_DELETE_BOT_BUTTON = { xpath: "//span[contains(.,'Remove')]" }
	WELCOME_ASSISTANT_TOGGLE = { xpath: '//ion-item-group/ion-item/ion-toggle' }
	WELCOME_ASSISTANT_BUTTON = { xpath: "//ion-text[contains(.,'Already have your own? Use it.')]" }
	ACTIVATE_TEST_BOT = { xpath: '//ion-item-group/ion-card/ion-avatar/img' }
	PUBLIC_BOT_TAB = { xpath: '' }
	REMOVE_QA_TEST_BOT = { xpath: "//ion-label[contains(.,'Remove Bot')]" }
	SAVE_ASSIGN_CONVERSATION_TOPICS_TAGS = { xpath: "//ion-button[contains(.,'Save')]" }
	QA_SELECT_BOT_CHAT = { xpath: '//ion-slide[3]/ion-list/ion-content/app-room-item/ion-item' }
	QA_CLAIM_BOT_CHAT_BUTTON = { xpath: '//*[@id="agent-content"]/app-bot-chat-container/app-claim-footer-block/div/ion-button' }
	SUPPORT_FEEDBACK_HIGURU_WEB_ICON = { xpath: '//*[@id="higuru-webchat"]/div/div/div' }
	ASSIGN_CONVERSATION_TOPICS_TAGS = { xpath: '//*[@id="assignSupportQueryTopicTags"]/div/app-assign-support-query-topic-tags/ion-content/ion-list/ion-item-group/div/ion-item[2]' }
	MANAGE_CONVERSATION_TOPICS = { xpath: '//ion-item[3]/ion-button' }
	REMOVE_TOPIC_TAG_1 = { xpath: "(//ion-icon[@name='close-circle'])[3]" }
	REMOVE_TOPIC_TAG_2 = { xpath: "(//ion-icon[@name='close-circle'])[2]" }
	REMOVE_TOPIC_TAG_3 = { xpath: "//ion-icon[@name='close-circle']" }
	ADD_CONVERSATION_TAG_FIELD = { xpath: '//*[@id="companyUnitConversationTags"]/div/app-company-unit-conversation-tag-settings/ion-content/ion-item-group/ion-input/input' }
	SAVE_CONVERSATION_TAG = { xpath: "//ion-button[contains(.,'Save')]" }
	TAG_CONVERSATION = { xpath: '//*[@id="agent-content"]/app-chat-container/app-message-block/ion-content/div/div/app-message-item[2]/div/div/app-system-message/div/div/div/div[2]/app-support-topic-tags/div/ion-text/span' }
	QA_DIRECT_CONVERSATION_HISTORY = { xpath: '//*[@id="consumerPlatformsNav"]/app-consumer-platform-history-container/app-header/ion-header/ion-toolbar[2]/ion-segment/ion-segment-button[2]' }
	QA_ALL_CONVERSATION_HISTORY = { xpath: '//*[@id="consumerPlatformsNav"]/app-consumer-platform-history-container/app-header/ion-header/ion-toolbar[2]/ion-segment/ion-segment-button[1]' }
	QA_PUBLIC_CONVERSATION_HISTORY = { xpath: '//*[@id="consumerPlatformsNav"]/app-consumer-platform-history-container/app-header/ion-header/ion-toolbar[2]/ion-segment/ion-segment-button[3]' }
	ACTIVATE_BOT_FIRST_RESPONDER = { xpath: '//ion-item-group[2]/ion-item[2]/ion-toggle' }
	QA_OUTBOUND_TAB = { xpath: "//ion-segment-button[contains(.,'Outbound')]" }
	CONVO_BOTS_TAB = { xpath: "//ion-segment-button[contains(.,'Bot')]" }
	REMOVE_BOT = { xpath: '' }
	BOT_TEXT = { xpath: '//*[@id="mat-tab-label-0-2"][contains(., "Bot")]' }
	CONVERSATION_HISTORY_TAB = { xpath: "//ion-label[contains(.,'Conversation History')]" }
	FILTER_DROP_DOWN = { xpath: "//ion-item[contains(.,'Filter')]" }
	CONVERSATION_TOPIC_POP_UP = { xpath: "//ion-item[contains(.,'Conversation Topic')]" }
	FILTER_CONVO_TOPIC_TAG = { xpath: "//ion-label[contains(.,'Blomzit')]" }
	UNFILTER_CONVO_TOPIC_TAG = { xpath: "//ion-label[contains(.,'Blomzit')]" }
	CONVO_SEARCH_FIELD = { id: 'mat-input-1' }
	TEN_SHOULD_NOT_SEE = { xpath: '//*[contains(., "10290")]' }
	COMPANY_UNIT_NAME = { xpath: '//*[@id="companyUnitCreateComponent"]/div/app-company-unit-create/ion-content/ion-item-group/form/ion-item/ion-input/input' }
	COMPANY_UNIT_ADD_IMAGE = { xpath: '//*[@id="addImage"]' }
	COMPANY_UNIT_ROUTING_TAGS_FIELD = { xpath: "//ion-modal[@id='companyUnitCreateComponent']/div[2]/app-company-unit-create/ion-content/ion-item-group/form/ion-item-group/ion-item/ion-input/input" }
	ADD_COMPANY_UNIT_BUTTON = { xpath: '//*[@id="home-content"]/app-company-units-container/app-header/ion-header/ion-toolbar/ion-buttons/ion-button' }
	COMPANY_UNIT_INPUT = { xpath: '//*[@id="mat-input-1"]' }
	CREATE_COMPANY_UNIT_ADD_BUTTON = { xpath: '//*[@id="companyUnitCreateComponent"]/div[2]/app-company-unit-create/ion-footer/ion-toolbar/ion-buttons/ion-button[2]' }
	DASHBOARD = { xpath: "//ion-label[contains(.,'Dashboard')]" }
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
	QA_LOGIN_BUTTON = { xpath: '//*[@id="login"]' }
	NO_BUTTON = { xpath: '//button[contains(.,"No")]' }
  ADD_IMAGE = {id: 'upload-btn'}
	NO_BUTTON_RESPONSE_1 = { xpath: '//*[contains(.," Is there anything else I can help you with?")]' }
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
  SEND_BUTTON = { xpath: '//*[@id="post_message"]' }
	CHAT_FIELD = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[3]/div[1]/div/div/div[1]' }
	CONVERSATION_RESOLVED_TEXT = {xpath: "//*[contains(.,'Conversation resolved by bot')]" }
	WIDGET_SEND_BUTTON = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[3]/div[1]/svg/g/rect' }
	WEB_WIDGET = { xpath: '//*[@id="higuru-webchat"]/div/div/img' }
	WEB_WIDGET_CHAT_FIELD = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[3]/div[1]/div/div/div[1]' }
	WEB_WIDGET_CHAT_FIELD_SEND_BUTTON = { xpath: '//*[@id="higuru-webchat"]/div/div[1]/div[3]/div[1]/svg/g/rect' }
	HG_CHAT_FIELD = { xpath: '//*[@id="webChat"]/div/div/div[1]/div[3]/div[1]/div/div/div[1]' }
	CONVERSATION_AGENT_RESOLVED = { xpath: '//div[contains(.,"Agent resolved conversation")]' }
	MY_PLEASURE_TEXT = { xpath: '//*[contains(.,"my pleasure.")]' }
	YOUR_WELCOME_TEXT = { xpath: '//*[contains(.,"re welcome.")]' }
  CONVERSATION_BOT_RESOLVED = {xpath: "//*[contains(.,'Conversation resolved by bot')]" }
	GET_STARTED_TEXT = { xpath: "//button[contains(.,'Get Started')]" }
	SUPPORT_TEXT = { xpath: "//button[contains(.,'Support')]" }
	END_CHAT_TEXT = { xpath: "//*[contains(.,'End Chat')]" }
	PRODUCT_INFO_TEXT = { xpath: "//button[contains(.,'Product Info')]" }
	WHAT_IS_HIGURU = { xpath: "//button[contains(.,'What is hi.guru?')]" }
	HIGURU_SIGN_UP = { xpath: "//button[contains(.,'Sign Up')]" }
	SIGN_UP_CONTINUE = { xpath: "//button[contains(.,'Continue')]" }
	USER_HELP_TEXT = { xpath: "//*[contains(.,'User help')]" }
	TECHNICAL_ISSUE = { xpath: '//*[@id="higuru-webchat"]/div/div/div[1]/div[2]/div[7]/div[2]/button[1]' }
	HIGURU_TECHNICAL_ISSUE = { xpath: "//*[contains(.,'Technical issue')]" }
	HIGURU_USER_HELP = { xpath: '//*[@id="higuru-webchat"]/div/div/div[1]/div[2]/div[17]/div[2]/button[2]' }
	HIGURU_SUPPORT = { xpath: "//button[contains(.,'Support')]" }
	HIGURU_CHAT_TO_SALES = { xpath: '//*[@id="higuru-webchat"]/div/div/div[1]/div[2]/div[15]/div[2]/button[3]' }
	HG_WEB_WIDGET_CHAT_FIELD = { xpath: '//*[@id="higuru-webchat"]/div/div/div[1]/div[3]/div[1]/div/div/div[1]' }
	HG_WEB_WIDGET_AGENT_REPLY = { xpath: "//*[contains(.,'Hello you are speaking to Bonga how may I assist you'" }
	USE_CASES_TEXT = { xpath: '//*[@id="higuru-webchat"]/div/div/div[1]/div[2]/div[5]/div[2]/button[2]' }
	WHAT_IS_HIGURU_CONTINUE = { xpath: "//button[contains(.,'Continue')]" }
	PRICING_AND_PLANS_TEXT = { xpath: '//*[@id="higuru-webchat"]/div/div/div[1]/div[2]/div[5]/div[2]/button[3]' }
	WHATSAPP_BUSINESS_TEXT = { xpath: '//*[@id="higuru-webchat"]/div/div/div[1]/div[2]/div[5]/div[2]/button[4]' }
	HIGURU_END_CHAT_TEXT = { xpath: "//*[contains(.,'End Chat')]" }
	SIGN_UP_TEXT = { xpath: "//*[contains(.,'Sign Up')]" }
	FEEDBACK_TEXT = { xpath: "//button[contains(.,'Feedback')]" }
	CHAT_WITH_US_TEXT = { xpath: "//button[contains(.,'Chat with us')]" }
	SECOND_BOT_RESPONSE = { xpath: "//*[contains(.,'Hi! Welcome to hi.guru')]" }
	BOT_PLEASURE_RESPONSE = { xpath: "//*[contains(.,'It's my pleasure.')]" }
	ERROR_MESSAGE = { xpath: "//*[contains(.,'Invalid Email address provided')]" }
	VERIFICATION_TEXT = { xpath: "//*[contains(.,' Account verification ')]" }
	GMAIL_SIGN_IN_BUTTON = { xpath: '/html/body/div[2]/div[1]/div[4]/ul[1]/li[2]/a' }
	LOGIN_TEXT = { xpath: "//*[contains(.,'Log In')]" }
	EMAIL_TEXT = { xpath: "//*[contains(.,'Email')]" }
	ENTER_PASSWORD_TEXT = { xpath: "//*[contains(.,'Enter your password')]" }
	INVALID_EMAIL_TEXT = { xpath: "//*[contains(.,'Invalid email')]" }
	HI_GURU_TERMS_OF_USE = { xpath: '//*[@id="registrationNav"]/app-register/div[2]/ion-card-content/form/ion-item/ion-text/a[1]' }
	HI_GURU_PRIVACY_POLICY = { xpath: '//*[@id="registrationNav"]/app-register/div[2]/ion-card-content/form/ion-item/ion-text/a[2]' }
	LOGIN_FROM_CREATE = { xpath: "//a[contains(.,'Login')]" }
	OTP_FIELD = { xpath: '//*[@id="digit1"]/input' }
	ACC_VER_NEXT_BUTTON = { xpath: '//*[@id="validateOtp"]' }
	INPUT_4_FIELD = { xpath: '//*[@id="digit1"]/input' }
	INPUT_5_FIELD = { xpath: '//*[@id="digit2"]/input' }
	INPUT_6_FIELD = { xpath: '//*[@id="digit3"]/input' }
	INPUT_7_FIELD = { xpath: '//*[@id="digit4"]/input' }
	RESEND_OTP = { xpath: '//*[@id="resendOTP"]' }
	OTP_NEXT_BUTTON = { xpath: '//*[@id="validateOtp"]' }
	GMAIL_NEXT_BUTTON = { xpath: '//*[@id="identifierNext"]/div/button' }
	GMAIL_PASSWORD_NEXT_BUTTON = { xpath: '//*[@id="passwordNext"]/div/button/div[2]' }
	GMAIL_VERIFICATION = { xpath: '//*[@id="view_container"]/div/div/div[2]/div/div[1]/div/form/span/section/div/div/div/ul/li[2]/div/div[2]' }
	SIGN_UP_BUTTON = { xpath: '//*[@id="signUp"]' }
	SIGN_UP_LOGIN_BUTTON = { xpath: "//a[contains(.,'Login')]" }
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
	SELECT_AGENT = { xpath: '//*[@id="usersNav"]/app-users-container/ion-content/ion-slides/div/ion-slide[1]/ion-list/app-user-item[2]/ion-nav-link/ion-card/ion-title' }
	EDIT_AGENT = { xpath: '//*[@id="usersNav"]/app-user-details/app-header/ion-header/ion-toolbar/ion-buttons[2]/ion-button[1]' }
	ROLE_1 = { xpath: '//*[@id="UserUpdateComponent"]/div[2]/app-user-update/ion-content/ion-item-group/form/ion-item[3]/ion-select' }
	SELECT_ROLE_1 = { xpath: "//*[contains(.,'Log In')]" }
	HIGURU_COMPANY_UNIT_SELECTION = { xpath: '/html/body/app-root/ion-app/ion-router-outlet/app-login-container/ion-content/ion-router-outlet/app-company-unit-selection-container/ion-grid/ion-row/ion-card/ion-card-content/ion-content/ion-list/app-company-unit-item[1]/ion-item/ion-button' }
	RECEIVED_MAIL = { xpath: '//span[contains(text(),"Hi there")]' }
	RECEIVED_MAIL_PASS_RESET = { xpath: "//span[@id=':1w']/span" }
	PREMIUM_MAILER =  { xpath: '//*[@id=":al"]' }
	PREMIUM_MAILER_2=  { xpath: '//span[contains(text(),"Your Company Unit has removed a service")]'}
	PREMIUM_MAILER_TEXT=  { xpath: '//span[contains(text(),"Premium Channel - Twitter")]'}
	DLT_1_MAIL_GMAIL=  { xpath: "//div[@id=':4']/div/div/div/div[2]/div[3]/div"}
	DLT_2_MAIL_GMAIL=  { xpath: '//*[@id=":7k"]'}
	OTHER = { xpath: '//*[@id="Pivot33-Tab1"]/span/div/div/span/span[2]' }
	VERIFICATION_CODE = { css: 'p:nth-child(3)' }
	NEXT_BUTTON_2 = { xpath: "/html/body/app-root/app-account-container/div/div[2]/app-register-form/div/div/div[2]/form/div/button/div" }
	BUSINESS_EMAIL_FIELD = { xpath: "(//ion-input[@id='email']/input)[2]" }
	BUSINESS_PASSWORD_FIELD = { xpath: "(//ion-input[@id='password']/input)[2]" }
	SIGN_UP_CHECKBOX= { xpath: '//*[@id="acceptTerms"]'}
	REGISTER_NEXT_BUTTON_1 = { xpath: "//ion-button[contains(.,'Next')]"}
	REGISTER_NEXT_BUTTON_3 = { xpath: '//*[@id="goToOrganisationDetail"]'}
	ORGANISATION_SIZE_FIELD = { xpath: "//ion-nav[@id='registrationNav']/app-organisation-detail/div[2]/ion-card-content/form/ion-item-group/ion-item/ion-label/ion-button/ion-label"}
	ORGANISATION_SIZE_OPTION = { xpath:"//ion-label[contains(.,'1 - 9 People')]"}
	CATEGORY_FIELD= { xpath: "//ion-nav[@id='registrationNav']/app-organisation-detail/div[2]/ion-card-content/form/ion-item-group/ion-item[2]/ion-label/ion-button"}
	CATEGORY_OPTION = { xpath: "//ion-label[contains(.,'Customer Engagement')]"}
	YOUR_ROLE_FIELD = { xpath: "//ion-nav[@id='registrationNav']/app-organisation-detail/div[2]/ion-card-content/form/ion-item-group/ion-item[3]/ion-label/ion-button/ion-label"}
	YOUR_ROLE_OPTION = { xpath: "//ion-item[contains(.,'Owner')]"}
	REGISTER_NEXT_BUTTON_4 = { xpath: '//*[@id="createAccount"]'}
	ACCOUNT_WALKTHROUGH_TEXT = { css: '.account > .overlay-heading'}
	ACCOUNT_WALKTHROUGH_NEXT_BUTTON = { xpath: '//*[@id="walkthroughModal"]/div[2]/app-walkthrough-container/div/div[2]/div[2]/ion-item/ion-button'}
	CU_IMAGE_WALKTHROUGH_TEXT= { css: '.compunit-heading > .overlay-heading'}
	CU_WALKTHROUGH_BACK_BUTTON = { xpath: '//*[@id="walkthroughModal"]/div[2]/app-walkthrough-container/div/div[3]/div/ion-item/ion-button[1]'}
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
	CANNED_REPLY_WALKTHROUGH_TEXT= { css: ''}
	CANNED_REPLY_WALKTHROUGH_BACK_BUTTON = { css: '#faq .btn:nth-child(3)'}
	CANNED_REPLY_WALKTHROUGH_NEXT_BUTTON = { css: '#faq .btn:nth-child(4)'}
	CONVO_HISTORY_WALKTHROUGH_TEXT = { css: '#hist .overlay-heading'}
	CONVO_HISTORY_WALKTHROUGH_BACK_BUTTON = { css: '#hist .btn:nth-child(3)'}
	CONVO_HISTORY_WALKTHROUGH_NEXT_BUTTON = { css: '#hist .btn:nth-child(4)'}
	BOTS_WALKTHROUGH_TEXT= { css: '#bot .overlay-heading'}
	BOTS_WALKTHROUGH_BACK_BUTTON = { css: '#bot .btn:nth-child(3)'}
	BOTS_WALKTHROUGH_DONE_BUTTON = { css: '#bot .btn:nth-child(4)'}
	LETS_GET_STARTED_SIDE_ARROW = { xpath: '//*[@id="welcomeModal"]/div[2]/app-welcome/ion-content/ion-button[2]//button/ion-ripple-effect'}
	LETS_GET_STARTED_TEXT_BODY = { css: '.ion-text-wrap:nth-child(3)'}
	START_ENGAGING_TEXT = { xpath: '//*[@id="welcomeModal"]/div[2]/app-welcome/ion-content/ion-slides/div[1]/ion-slide[2]/ion-item-group/ion-label[1]'}
	START_ENGAGING_TEXT_BODY = { xpath: '//*[@id="welcomeModal"]/div[2]/app-welcome/ion-content/ion-slides/div[1]/ion-slide[2]/ion-item-group/ion-label[2]'}
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
	BACK_TO_PEOPLE = { xpath: '//*[@id="usersNav"]/app-user-details/app-header/ion-header/ion-toolbar/ion-buttons[1]/ion-nav-link/ion-button//button/span' }
	PEOPLE_TAB_UPGRADE_BUTTON = { xpath: '//*[@id="upgrade-btn-ga-11"]' }
	AGENT_PLACEHOLDER = { xpath: "//ion-nav[@id='usersNav']/app-users-container/ion-content/ion-list/app-user-item[2]/ion-nav-link/ion-card/ion-avatar/img"}
	AGENT_DROP_DOWN_MENU = { xpath: '//ion-button[2]' }
	SAQHWITHI_DROP_DOWN_MENU = { xpath: '//ion-avatar[3]/img' }
	AGENT_LOGOUT_BUTTON = { xpath: "//ion-label[contains(.,'Log Out')]" }
  DELETE_USER_BUTTON = { xpath: "//ion-label[contains(.,'Delete User')]" }
  MODAL_DELETE_USER_BUTTON = { xpath: "//button[contains(.,'Delete')]" }
  ADD_PERSON_BUTTON = { xpath: "//ion-button[contains(.,'Add Person')]" }
	ADD_PERSON_UPGRADE_BUTTON = { xpath: '//*[@id="upgrade-btn-ga-11"]/div' }
  SCREEN_NAME = { xpath: '//*[@id="UserCreateComponent"]/div[2]/app-user-create/ion-content/ion-item-group/form/ion-item[1]/ion-input/input' }
	ADD_PERSON_EMAIL_FIELD = {  xpath: '//*[@id="UserCreateComponent"]/div[2]/app-user-create/ion-content/ion-item-group/form/ion-item[2]/ion-input/input' }
	ROLE = {  xpath: '//*[@id="UserCreateComponent"]/div[2]/app-user-create/ion-content/ion-item-group/form/ion-item[3]/ion-select' }
	SELECT_ROLE = {  xpath: '//ion-item[2]/ion-radio' }
	MOBILE_NUMBER = {  xpath: '//*[@id="UserCreateComponent"]/div[2]/app-user-create/ion-content/ion-item-group/form/ion-item[4]/ion-input/input' }
	ADD_PERSON_CREATE_BUTTON = {  xpath: '//*[@id="UserCreateComponent"]/div[2]/app-user-create/ion-footer/ion-toolbar/ion-buttons/ion-button[2]' }
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
	FACEBOOK_CHANNEL_CARD = {xpath: '//ion-item-group[2]/app-platform-item/ion-nav-link/ion-card'}
	HOW_TO_SETUP_FACEBOOK = {xpath: '//*[@id="channelsNav"]/app-platform-details/ion-content/ion-list/ion-toolbar/ion-segment/ion-segment-button[2]'}
	ADD_FACEBOOK_CHANNEL_BUTTON = {xpath: '//ion-label/ion-button'}
	FACEBOOK_EMAIL_FIELD = {xpath: '//*[@id="email"]'}
	FACEBOOK_EMAIL_FIELD_2 = { id: 'email'}
	FACEBOOK_PASSWORD_FIELD = {xpath: "//input[@id='pass']"}
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
	PAGE_OPTION = {css: '#qa\ 9020\ 6 .oajrlxb2 > .j83agx80'}
	PAGE_OPTION_2 = {css: ".g5gj957u > .ekzkrbhg"}
	SEARCH_BUTTON = {xpath: '//*[@id="js_r"]/form/button'}
	FACEBOOK_PAGE = {css: '.nc684nl6 > .oajrlxb2 > span'}
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
	GMAIL_BUTTON = { xpath: '//a[contains(.,"Gmail")]' }
	# GMAIL_SIGN_IN_BUTTON = { xpath: '/html/body/div[2]/div[1]/div[4]/ul[1]/li[2]/a' }
	# GMAIL_ACCOUNT = { xpath: '//div[contains(.,"wernerautotest1@gmail.com")]' }
	# GMAIL_EMAIL_FIELD = { xpath: '//*[@id="identifierId"]' }
	# GMAIL_PASSWORD_FIELD = { xpath: '//*[@id="password"]/div[1]/div/div[1]/input' }
	# GMAIL_NEXT_BUTTON = { xpath: '//*[@id="identifierNext"]' }
	GMAIL_PASS_NEXT_BUTTON = { xpath: '//*[@id="passwordNext"]' }
	GMAIL_CONFIRM_BUTTON = { xpath: '//span[contains(.,"Confirm")]' }
	GMAIL_PASSWORD_INSTEAD = { xpath: '//a[contains(.,"Use your password instead")]' }

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
	AVAILABILITY_TOGGLE = { xpath: '//ion-toggle' }
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
	CONVO_ASSIGNED_TEXT = { class: 'transfer-query-name' }
	REPLY_CHAT_GENERIC_1 = { xpath: '//*[@id="higuru-webchat"]/div/div/div[1]/div[2]/div[6]/div/div/div/div[1]' }
	REPLY_CHAT_GENERIC_2 = { xpath: '//*[@id="higuru-webchat"]/div/div/div[1]/div[2]/div[7]/div/div/div/div[1]' }
	BOT_CHAT = { xpath: '//*[@id="mat-tab-content-0-2"]/div/div/app-room/div/div[2]/div[1]/span[1]' }
	CLAIM_BUTTON = { xpath: '/html/body/app-root/app-agent-interface-page/div[2]/app-chat/app-claim-footer-block/div/button' }
	CONVO_CLAIMED_TEXT = { xpath: "//*[contains(.,'Conversation successfully claimed')]" }
	INBOUND_CHAT_FIELD = { xpath: '/html/body/app-root/app-agent-interface-page/div[2]/app-chat/app-chat-footer-block/app-agent-chatbox/div[1]' }
	INBOUND_CHAT_SEND_BUTTON = { xpath: '/html/body/app-root/app-agent-interface-page/div[2]/app-chat/app-chat-footer-block/app-agent-chatbox/div[2]/img[1]' }
	RESOLVE_BUTTON = { xpath: '//ion-item[2]/ion-radio' }
	RESOLVE_TEXT = { xpath: '//button[2][contains(.,"Resolve")]' }
	RESOLVED_TEXT = { xpath: '//span[contains(.,"Conversation successfully resolved")]' }
	THANK_YOU_TEXT = { xpath: '//*[contains(.,"Thank you Awesome Bot!")]' }
	RESOLVED_TIME_1 = { xpath: '//*[@id="higuru-webchat"]/div/div/div[1]/div[2]/div[8]/div' }
	RESOLVED_TIME_2 = { xpath: '//*[@id="higuru-webchat"]/div/div/div[1]/div[2]/div[9]/div' }
	POP_UP_DISMISS = { class: 'eicon-close' }
end