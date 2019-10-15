module LocalizationHelpers
	def set_device_language(lang)
        caps = {caps: {
          deviceName: $app_driver.caps[:deviceName],
          platformName: $app_driver.caps[:platformName],
          app: $app_driver.caps[:app],
          appPackage: $app_driver.caps[:appPackage],
          appActivity: $app_driver.caps[:appActivity],
          newCommandTimeout: $app_driver.caps[:newCommandTimeout],
          noReset: $app_driver.caps[:noReset],
          autoGrantPermissions: $app_driver.caps[:autoGrantPermissions],
          autoAcceptAlerts: $app_driver.caps[:autoAcceptAlerts],
          gpsEnabled: $app_driver.caps[:gpsEnabled],
          automationName: $app_driver.caps[:automationName],
          androidDeviceReadyTimeout: $app_driver.caps[:androidDeviceReadyTimeout],
          avdLaunchTimeout: $app_driver.caps[:avdLaunchTimeout],
          avdReadyTimeout: $app_driver.caps[:avdReadyTimeout],
          isHeadless: $app_driver.caps[:isHeadless],
          language: get_language(lang),
          locale: get_locale(lang)
        }}

        $app_driver = Appium::Driver.new(caps, true)
		$app_driver.start_driver
	end

	def get_locale(lang)
		case lang
		when "italian"
			return 'IT'
		when "german"
			return "DE"
		when "norwegian"
			return "NO"
		when "portuguese"
			return "PT"
		when "polish"
			return "PL"
		else
			raise "** #{lang} is not available for selection **"
		end
	end

	def get_language(lang)
		case lang
		when "italian"
			return 'it'
		when "german"
			return "de"
		when "norwegian"
			return "nb"
		when "portuguese"
			return "pt"
		when "polish"
			return "pl"
		else
			raise "** #{lang} is not available for selection **"
		end
	end
end