require "active_record"
require "yaml"

module DbHelpers
	def connect_to_test_db
		create_yaml_config
		db_configuration
		connect
	end

	def db_configuration
		db_configuration_file = File.join('../../models/', 'db', 'config.yml')
		YAML.load(File.read(db_configuration_file))
	end

	def connect
		ActiveRecord::Base.establish_connection(db_configuration["development"])
	end

	def create_yaml_config
		env_vars_arr = {
			TEST_DB_ADAPTER: ENV['TEST_DB_ADAPTER'],
			TEST_DB_ENCODING: ENV['TEST_DB_ENCODING'],
			TEST_DB_POOL: ENV['TEST_DB_POOL'],
			TEST_DB_HOST: ENV['TEST_DB_HOST'],
			TEST_DB_PORT: ENV['TEST_DB_PORT'],
			TEST_DB_USERNAME: ENV['TEST_DB_USERNAME'],
			TEST_DB_PASSWORD: ENV['TEST_DB_PASSWORD'],
			TEST_DB_DATABASE: ENV['TEST_DB_DATABASE']
		}

		## Check if required env vars are defined
		env_vars_arr.each do |key, value|
			if value.nil?
				raise "** #{key}, value has not been defined as a environment var. STOPPING TESTS **"
			end
		end

		begin ## Create a yaml file if none exist
			db_config = YAML::load_file('../../models/db/config.yml') || {} #Load
		rescue Errno::ENOENT
			create_placeholder_config_file
			db_config = YAML::load_file('../../models/db/config.yml') #Load
		end

		db_config['development']['adapter'] = ENV['TEST_DB_ADAPTER']
		db_config['development']['enoding'] = ENV['TEST_DB_ENCODING']
		db_config['development']['pool'] = ENV['TEST_DB_POOL']
		db_config['development']['host'] = ENV['TEST_DB_HOST']
		db_config['development']['port'] = ENV['TEST_DB_PORT']
		db_config['development']['username'] = ENV['TEST_DB_USERNAME']
		db_config['development']['password'] = ENV['TEST_DB_PASSWORD']
		db_config['development']['database'] = ENV['TEST_DB_DATABASE']
		File.write('../../models/db/config.yml', db_config.to_yaml) #Store		
	end

	def create_placeholder_config_file
		db_config = {"development" =>
			{
				"adapter" => '',
				"enoding" => '',
				"pool" => '',
				"host" => '',
				"port" => '',
				"username" => '',
				"password" => '',
				"database" => '',
			}
		}

		File.write('../../models/db/config.yml', db_config.to_yaml) #Store		
	end
end