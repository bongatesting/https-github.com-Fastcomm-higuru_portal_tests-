module AppHelpers
	def get_latest_version
		if ENV['GPAT'].nil? ## Check for Github Personal Access Token
			raise "** Please Generate a Personal Access Token from GitHub and add export it from your bashrc file as GPAT"
		end

		uri = URI.parse("https://api.github.com/repos/Fastcomm/eyetime_android/releases?access_token=#{ENV['GPAT']}")
		request = Net::HTTP::Get.new(uri)
		request["Accept"] = "application/json"

		req_options = {
			use_ssl: uri.scheme == "https",
		}

		response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
			http.request(request)
		end

		if response.code == "200"
			my_hash = JSON.parse(response.body)

			all_available_version = get_all_available_versions(my_hash)

			return @latest_app = all_available_version.first
		else
			raise "** There seems to be a problem on GitHub **"
		end
	end


	def download_latest_app
		p "Downloading Latest #{ENV['HOST']} app"
		download_url = @latest_app["assets"].first["url"]

		uri = URI.parse("#{download_url}?access_token=#{ENV['GPAT']}")
		request = Net::HTTP::Get.new(uri)
		request["Accept"] = "application/octet-stream"

		req_options = {
			use_ssl: uri.scheme == "https",
		}

		response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
			http.request(request)
		end

		if response.code == "302"
			response = Net::HTTP.get_response(URI.parse(response['location']))
		end

		path_to_app_folder = Dir.pwd + "/../../app_folder/#{ENV['HOST']}/latest/"
		path_to_app_folder = Pathname.new(path_to_app_folder).cleanpath
		File.open(path_to_app_folder.to_s + "/" + @latest_app["name"].tr(' ', '_').tr('.', '').downcase + ".apk", "w", encoding: 'ascii-8bit') {|f| f.write(response.body) }
	end

	def get_all_available_versions(hash)
		all_versions = []

		case ENV['HOST'].downcase
		when 'rc'
			app_env = 'Rc'
		when 'qa'
			app_env = 'Qa'
			
		end

		hash.each do |obj|
			if obj["tag_name"].include?(app_env)
				all_versions << obj
			end
		end

		return all_versions
	end

	def translation_file_name(lang)
		case lang
		when "italian"
			return "values-it"
		when "german"
			return "values-de"
		when "norwegian"
			return "values-nb"
		when "portuguese"
			return "values-pt-rPT"
		when "polish"
			return "values-pl-rPL"
		else
			raise "** #{lang} is not available for selection **"
		end
	end

	def get_translation(lang, name_ref)
		lang_file = translation_file_name(lang)

		uri = URI.parse("https://api.github.com/repos/Fastcomm/eyetime_android/contents/app/src/main/res/#{lang_file}?access_token=#{ENV['GPAT']}")
		request = Net::HTTP::Get.new(uri)
		request["Accept"] = "application/json"

		req_options = {
			use_ssl: uri.scheme == "https",
		}

		response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
			http.request(request)
		end
		if response.code == "200"
			my_hash = JSON.parse(response.body)
			download_url = my_hash.first['download_url']

			uri = URI.parse("#{download_url}")
			request = Net::HTTP::Get.new(uri)
			request["Accept"] = "application/xml"

			req_options = {
				use_ssl: uri.scheme == "https",
			}

			response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
				http.request(request)
			end

			path_to_app_folder = Dir.pwd + "/../../language_files/"
			path_to_app_folder = Pathname.new(path_to_app_folder).cleanpath
			File.open(path_to_app_folder.to_s + "/" + lang.downcase + ".xml", "w", encoding: 'ASCII-8BIT') {|f| f.write(response.body) }
		else
			raise "** There seems to be a problem on GitHub **"
		end	

		xml_file = Dir.pwd + "/../../language_files/"
		xml_file = Pathname.new(path_to_app_folder).cleanpath
		xml_file = File.open(path_to_app_folder.to_s + "/" + "#{lang}.xml")
		doc = Nokogiri::XML(xml_file)

		return doc.at_xpath("//string[@name='#{name_ref}']").text
	end
end