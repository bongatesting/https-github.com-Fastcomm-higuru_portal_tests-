module UrlHelpers

	home_url = "#{ENV['PORTAL_BASE_URL']}/#login"

	def go_to_url (url)
		puts home_url
		$web_driver.navigate.to 'about:blank' #portal doesn't get navigation changes so we reset url before navigating, so it loads from scratch
		$web_driver.navigate.to url
		# animations make tests flaky, make then execute instantly
		enable_instant_animations($web_driver)
	end

	def go_to_homepage
		go_to_url(home_url)
	end

	def reload_page
		$web_driver.navigate.refresh
	end

	private

	def enable_instant_animations(driver)
		driver.execute_script("$('<style type=\"text/css\">* {  animation-duration: 1ms !important;  animation-delay: 1ms !important;  transition-duration: 1ms !important;  transition-delay: 1ms !important;}</style>').appendTo('html > head');")
	end
end