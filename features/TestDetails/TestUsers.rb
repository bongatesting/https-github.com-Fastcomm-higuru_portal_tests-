class EmulatorUser

  attr_reader :name, :password, :surname, :number, :email, :address,
              :test_user_1, :test_user_1_email, :test_user_1_cell,
              :test_user_2, :test_user_2_email, :test_user_2_cell,
              :display_name_1, :display_name_edit, :persona_2,
              :test_ios, :test_ios_email, :removed_user_1, :removed_user_2,
              :user_1_joined, :user_2_joined, :image_path, :csv_file_path,
              :xcl_file_path, :pdf_file_path, :powerpoint_file_path,
              :publisher_file_path, :word_file_path, :zip_file_path,
              :contact_file_path, :step_file_path, :isg_file_path,
              :ipt_file_path, :isc_file_path, :mp3_file_path

  def initialize (name, password, surname, number, email, address,
                  test_user_1, test_user_1_email, test_user_1_cell,
                  test_user_2, test_user_2_email, test_user_2_cell,
                  display_name_1, display_name_edit, persona_2,
                  test_ios, test_ios_email, removed_user_1, removed_user_2,
                  user_1_joined, user_2_joined, image_path, csv_file_path, xcl_file_path, pdf_file_path,
                  powerpoint_file_path, publisher_file_path, word_file_path,
                  zip_file_path, contact_file_path, step_file_path, isg_file_path,
                  ipt_file_path, isc_file_path)

    @name = name
    @password = password
    @surname = surname
    @number = number
    @email = email
    @address = address
    @test_user_1 = test_user_1
    @test_user_1_email = test_user_1_email
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
  end
end

TestUser = EmulatorUser.new('Bonga Test',
                            'higuru@123',
                            'Emulator',
                            '08343715311',
                            'bonga+37@hi.guru',
                            '16 Park Lane, Century City, Cape Town',
                            'Bonga User 1',
                            'bonga+1@hi.guru',
                            '+',
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
                            '\features\Attachment_Files\Isc-sample.asc')

class ChannelDetails
  attr_reader :discussionchanname, :discussionchandescr, :businesschanname, :businesschandesc,
              :newschanname, :newschandesc, :workspace_1, :workspace_2, :workspace_3, :workspace_qa,
              :workspace_rc, :first_channel_on_workspace_1, :first_channel_on_workspace_2,
              :first_channel_on_workspace_3, :first_channel_on_workspace_qa

  def initialize(discussionchanname, discussionchandescr, businesschanname, businesschandesc,
                 newschanname, newschandesc, workspace_1, workspace_2, workspace_3, workspace_qa, workspace_rc,
                 first_channel_on_workspace_1, first_channel_on_workspace_2,
                 first_channel_on_workspace_3, first_channel_on_workspace_qa)

    @discussionchanname = discussionchanname
    @discussionchandescr = discussionchandescr
    @businesschanname = businesschanname
    @businesschandesc = businesschandesc
    @newschanname = newschanname
    @newschandesc = newschandesc
    @workspace_1 = workspace_1
    @workspace_2 = workspace_2
    @workspace_3 = workspace_3
    @workspace_qa = workspace_qa
    @workspace_rc = workspace_rc
    @first_channel_on_workspace_1 = first_channel_on_workspace_1
    @first_channel_on_workspace_2 = first_channel_on_workspace_2
    @first_channel_on_workspace_3 = first_channel_on_workspace_3
    @first_channel_on_workspace_qa = first_channel_on_workspace_qa
  end
end

Channel = ChannelDetails.new("Bonga Discussion Channel",
                             'This is a discussion channel',
                             'Bonga Business Channel',
                             'This is a business channel',
                             'Bonga News Channel',
                             'This is a news channel',
                             'Test WS 1',
                             'Test WS 2',
                             'Test WS 3',
                             'Team Latch QA',
                             'Team Latch RC',
                             'QA Open Discussion',
                             'Business Public Channel',
                             'Test Channel',
                             'Testers Discussion')