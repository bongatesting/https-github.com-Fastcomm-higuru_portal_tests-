class EmulatorUser

	attr_reader :name, :password, :new_password, :surname, :number, :email, :address,
	            :twitter_username, :twitter_password, :twitter_username_1, :twitter_password_1,
	            :hi_guru_email, :hi_guru_password,
	            :test_user_1, :test_user_1_email, :test_user_1_password, :test_user_1_cell,
	            :test_user_2, :test_user_2_email, :test_user_2_cell,
	            :display_name_1, :display_name_edit, :persona_2,
	            :test_ios, :test_ios_email, :removed_user_1, :removed_user_2,
	            :user_1_joined, :user_2_joined, :image_path, :csv_file_path,
	            :xcl_file_path, :pdf_file_path, :powerpoint_file_path,
	            :publisher_file_path, :word_file_path, :zip_file_path,
	            :contact_file_path, :step_file_path, :isg_file_path,
	            :ipt_file_path, :isc_file_path, :mp3_file_path

	def initialize (name, password, new_password, surname, number, email, address,
	                    twitter_username, twitter_password, twitter_username_1, twitter_password_1,
	                    hi_guru_email, hi_guru_password,
			                test_user_1, test_user_1_email, test_user_1_password, test_user_1_cell,
			                test_user_2, test_user_2_email, test_user_2_cell,
			                display_name_1, display_name_edit, persona_2,
			                test_ios, test_ios_email, removed_user_1, removed_user_2,
			                user_1_joined, user_2_joined, image_path, csv_file_path, xcl_file_path, pdf_file_path,
			                powerpoint_file_path, publisher_file_path, word_file_path,
			                zip_file_path, contact_file_path, step_file_path, isg_file_path,
			                ipt_file_path, isc_file_path, mp3_file_path)

			@name = name
			@password = password
			@new_password = new_password
			@surname = surname
			@number = number
			@email = email
			@address = address
			@twitter_username = twitter_username
			@twitter_password = twitter_password
			@twitter_username_1 = twitter_username_1
			@twitter_password_1 = twitter_password_1
			@hi_guru_email = hi_guru_email
			@hi_guru_password = hi_guru_password
			@test_user_1 = test_user_1
			@test_user_1_email = test_user_1_email
			@test_user_1_password = test_user_1_password
			@test_user_1_cell = test_user_1_cell
			@test_user_2 = test_user_2
			@test_user_2_email = test_user_2_email
			@test_user_2_cell = test_user_2_cell
			@display_name_1 = display_name_1
			@display_name_edit = display_name_edit
			@persona_2 = persona_2
			@test_ios = test_ios
			@test_ios_email = test_ios_email
			@removed_user_1 = removed_user_1
			@removed_user_2 = removed_user_2
			@user_1_joined = user_1_joined
			@user_2_joined = user_2_joined
			@image_path = image_path
			@csv_file_path = csv_file_path
			@xcl_file_path = xcl_file_path
			@pdf_file_path = pdf_file_path
			@powerpoint_file_path = powerpoint_file_path
			@publisher_file_path = publisher_file_path
			@word_file_path = word_file_path
			@zip_file_path = zip_file_path
			@contact_file_path = contact_file_path
			@step_file_path = step_file_path
			@isg_file_path = isg_file_path
			@ipt_file_path = ipt_file_path
			@isc_file_path = isc_file_path
			@mp3_file_path = mp3_file_path
		end
end

TestUser = EmulatorUser.new('Bonga Test',
                            'higuru@123',
                            'Bonga@HiGuru123',
                            'Emulator',
                            '08343715311',
                            'bongafati+6@gmail.com',
                            '16 Park Lane, Century City, Cape Town',
                            '@Khivakaxhoseni',
                            'Likhanye@2015',
                            '@Ndluzodaka',
                            'Xhanixhani@1910',
                            'bonga@hi.guru',
                            'higuru@123',
                            'Bonga User 1',
                            'bonga+39.1@hi.guru',
                            'higuru@123',
                            '+27734089935',
                            'Bonga User 2',
                            'bonga+2@hi.guru',
                            '+',
                            'Bonga Emulator',
                            'Bonga Persona Edited',
                            'Bonga Persona 2',
                            'Bonga iOS',
                            'bonga+3@hi.guru',
                            'Successfully removed Bonga User 1 from the group',
                            'Successfully removed Bonga User 2 from the group',
                            'Bonga User 1 has joined the group',
                            'Bonga User 2 has joined the group',
                            '\features\Images\bean.png',
                            '\features\Attachment_Files\LatchCSVExample.csv',
                            '\features\Attachment_Files\Excel-sample.xlsx',
                            '\features\Attachment_Files\PDF-sample.pdf',
                            '\features\Attachment_Files\PowerPoint-sample.pptx',
                            '\features\Attachment_Files\Publisher-sample.pub',
                            '\features\Attachment_Files\Word-sample.docx',
                            '\features\Attachment_Files\zip_sample.zip',
                            '\features\Attachment_Files\Contact-sample.contact',
                            '\features\Attachment_Files\Step-sample.STEP',
                            '\features\Attachment_Files\Isg-sample.igs',
                            '\features\Attachment_Files\Ipt-sample.ipt',
                            '\features\Attachment_Files\Isc-sample.asc',
                            '\features\Attachment_Files\Audio-sample.mp3')

class Channels
	attr_reader :discussionchanname,
	            :discussionchandescr,
	            :businesschanname,
	            :businesschandesc,
	            :newschanname,
	            :newschandesc,
	            :dealchname,
	            :dealchdesc,
	            :litchname,
	            :litchdesc,
	            :workspace_1,
	            :workspace_2,
	            :workspace_3,
	            :workspace_4,
	            :workspace_5,
	            :workspace_qa,
	            :workspace_rc,
	            :chn_1_ws_1,
	            :chn_1_ws_2,
	            :chn_1_ws_3,
	            :chn_1_ws_4,
	            :chn_1_ws_5,
	            :chn_1_ws_qa,
	            :chn_1_ws_rc

	def initialize(discussionchanname, discussionchandescr, businesschanname, businesschandesc,
	               newschanname, newschandesc, dealchname, dealchdesc, litchname, litchdesc,
	               workspace_1, workspace_2, workspace_3, workspace_4, workspace_5, workspace_qa, workspace_rc,
	               chn_1_ws_1, chn_1_ws_2, chn_1_ws_3, chn_1_ws_4, chn_1_ws_5, chn_1_ws_qa, chn_1_ws_rc)

		@discussionchanname = discussionchanname
		@discussionchandescr = discussionchandescr
		@businesschanname = businesschanname
		@businesschandesc = businesschandesc
		@newschanname = newschanname
		@newschandesc = newschandesc
		@dealchname = dealchname
		@dealchdesc = dealchdesc
		@litchname = litchname
		@litchdesc = litchdesc
		@workspace_1 = workspace_1
		@workspace_2 = workspace_2
		@workspace_3 = workspace_3
		@workspace_4 = workspace_4
		@workspace_5 = workspace_5
		@workspace_qa = workspace_qa
		@workspace_rc = workspace_rc
		@chn_1_ws_1 = chn_1_ws_1
		@chn_1_ws_2 = chn_1_ws_2
		@chn_1_ws_3 = chn_1_ws_3
		@chn_1_ws_4 = chn_1_ws_4
		@chn_1_ws_5 = chn_1_ws_5
		@chn_1_ws_qa = chn_1_ws_qa
		@chn_1_ws_rc = chn_1_ws_rc
	end
end

Channel = Channels.new("Bonga Discussion Channel",
                             'This is a discussion channel',
                             'Bonga Business Channel',
                             'This is a business channel',
                             'Bonga News Channel',
                             'This is a news channel',
                             'Bonga Deal Channel',
			                       'This is a Legal Deals Channel',
			                       'Bonga Litigation Channel',
			                       'This is a Legal Litigation Channel',
			                       'Test WS 1',
			                       'Test WS 2',
			                       'Test WS 3',
			                       'Test WS 4',
			                       'Test WS 5',
			                       'Team Latch QA',
			                       'Team Latch RC',
			                       'WS 1 Channel 1',
			                       'WS 2 Channel 1',
			                       'WS 3 Channel 1',
			                       'WS 4 Channel 1',
			                       'WS 5 Channel 1',
			                       'My QA Business Channel',
			                       'My RC Business Channel')