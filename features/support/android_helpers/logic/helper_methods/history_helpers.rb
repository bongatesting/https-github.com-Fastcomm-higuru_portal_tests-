require "csv"

module HistoryHelpers
	def get_unique_display_name
		CSV.foreach(Dir.pwd + "/../../global_history/current_user_display_name.csv") do |row| ## Get unique display name
			@display_name = row[0].to_s
			return @display_name
		end
	end

	def set_unique_display_name
		CSV.open(Dir.pwd + "/../../global_history/current_user_display_name.csv", "wb") do |row| ## Set unique display name
			csv_data = ["#{@display_name}"]
			row << csv_data
		end
	end

	def get_number_from_fail_file
		CSV.foreach(Dir.pwd + "/history/failed_sc.csv") do |row| ## Get unique number from file
	    @failed_sc_count = row[0].to_i ## Set fail scenario count
		end
	end

	def set_new_fail_number
		@failed_sc_count = @failed_sc_count + 1 ## Increment failed scenario count
		CSV.open(Dir.pwd + "/history/fail.csv", "wb") do |csv| ## Save new unique number
	    csv_data = ["#{@failed_sc_count}"]
	    csv << csv_data
		end
	end
end