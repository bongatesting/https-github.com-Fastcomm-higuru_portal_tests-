# frozen_string_literal: true

class EmulatorUser
  attr_reader :name
  attr_reader :surname
  attr_reader :number
  attr_reader :email
  attr_reader :address
  attr_reader :test_user_1
  attr_reader :test_user_1_email
  attr_reader :test_user_1_cell
  attr_reader :test_user_2
  attr_reader :test_user_2_email
  attr_reader :test_user_2_cell
  attr_reader :display_name_1
  attr_reader :display_name_edit
  attr_reader :persona_2
  attr_reader :test_ios
  attr_reader :test_ios_email
  attr_reader :removed_user_1
  attr_reader :removed_user_2
  attr_reader :user_1_joined
  attr_reader :user_2_joined

  def initialize(name, surname, number, email, address, test_user_1, test_user_1_email,
                 test_user_1_cell, test_user_2, test_user_2_email,
                 test_user_2_cell, display_name_1, display_name_edit, persona_2, test_ios,
                 test_ios_email, removed_user_1, removed_user_2, user_1_joined, user_2_joined)
    @name = name
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
  end
end

TestUser = EmulatorUser.new('Werner Test',
                            'Emulator',
                            '08343715311',
                            'wernero@fastcomm.com',
                            '15 Bradford Street, Highveld, Centurion',
                            'Werner User 1',
                            'test_user_1@fastcomm.com',
                            '+276206258413',
                            'Werner User 2',
                            'wernero+2@fastcomm.com',
                            '+276206258410',
                            'Werner Emulator',
                            'Werner Persona Edited',
                            'Werner Persona 2',
                            'Werner iOS',
                            'wernero+3@fastcomm.com',
                            'Successfully removed Werner User 1 from the group',
                            'Successfully removed Werner User 2 from the group',
                            'Werner User 1 has joined the group',
                            'Werner User 2 has joined the group')

class ChannelDetails
  attr_reader :discussionchanname, :discussionchandescr, :businesschanname, :businesschandesc,
              :newschanname, :newschandesc

  def initialize(discussionchanname, discussionchandescr,
                 businesschanname, businesschandesc,
                 newschanname, newschandesc)

    @discussionchanname = discussionchanname
    @discussionchandescr = discussionchandescr
    @businesschanname = businesschanname
    @businesschandesc = businesschandesc
    @newschanname = newschanname
    @newschandesc = newschandesc
  end
end

Channel = ChannelDetails.new('Werner Discussion Channel',
                             'This is a discussion channel',
                             'Werner Business Channel',
                             'This is a business channel',
                             'Werner News Channel',
                             'This is a news channel')
