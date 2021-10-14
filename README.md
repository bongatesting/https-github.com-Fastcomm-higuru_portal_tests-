# OneDayOnly Web Tests
Testing All platforms and websites where the hiGugru widget is active

##Setup for Ubuntu:

Install Appium/Android Studio/BashRC with the following link:
```
https://medium.com/testcult/configuring-appium-in-ubuntu-from-scratch-a9f8edc02d13

Recommended: Install NVM - https://github.com/creationix/nvm
Recommened Android Studio Version: 3.3.2
```
Install Android-Studio with Ubuntu Software

Install KVM with this Link:
```
https://stackoverflow.com/questions/37300811/android-studio-dev-kvm-device-permission-denied
```
Install GitKraken with Ubuntu Software - Clone Repo on Github - Link_regression_tests

Download and install git with this Link:
```
https://git-scm.com/download/linux
```
Install Ruby, Bundler and rails with this link: use rbenv(Recommended)
```
https://gorails.com/setup/ubuntu/18.10
```
Install RubyMine through Ubuntu Software - Use the "Key" to activate Rubymine

```Recommended Rubymine Version: 2018.3```

Open cloned Repository

Once Rubymine opens, configure the Gem Controller and run Bundle install

Install homebrew with this link: 
```
http://linuxbrew.sh/
```
Install Chromedriver with this Link: 
```
https://tecadmin.net/setup-selenium-chromedriver-on-ubuntu/
```
============================================================================================

##Setup for Windows:

**Install Java JDK and Java JRE**

JDK: jdk-8u201-windows-x64
```
https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html
```
JRE: jre-8u201-windows-x64
```
https://www.oracle.com/technetwork/java/javase/downloads/jre8-downloads-2133155.html
```
**Install Android Studio**
```
Download Link: https://developer.android.com/studio/
```
```
Install Link:  https://developer.android.com/studio/install
```
**Install Appium**

```appium-desktop-setup-1.10.0.exe``` Do Not Use 1.11.0 - Has certificate Issues

Download Link: ```https://github.com/appium/appium-desktop/releases/tag/v1.10.0```

Setup Link: ```https://electronjs.org/apps/appium```

'''Install Appium through NPM'''

Download Link: '''https://nodejs.org/en/download/'''

Only Install NPM and not Chocolatary...

Setup Link for NPM: '''https://www.guru99.com/download-install-node-js.html'''

Setup Link for Appium: '''https://www.edgewordstraining.co.uk/2017/07/05/install-appium-server-windows/'''

Terminal command: '''npm install -g appium'''
To test successful install, type this command in cmd: '''appium'''
You should see the following:

```[Appium] Welcome to Appium v1.13.0```
```[Appium] Appium REST http interface listener started on 0.0.0.0:4723```

**Install Gitkraken**

Download Link: ```https://www.gitkraken.com/```

```NB: 'Log in with your personal Github account and not a commercial/Fastcomm login, the reason for this is that Github is now commercial software that requires a license to access private repo's```

Open Gitkraken and clone the necessary Repositories

Repositories Link: ```https://github.com/Fastcomm```

**Install Chromedriver**

```ChromeDriver 2.46``` 

Download Link: ```http://chromedriver.chromium.org/downloads```

* Extract Chromedriver to C:\Ruby26-x64

**Install Ruby, Rubymine, Git and Bundler**

Ruby: Download & Setup Link: ```https://www.jetbrains.com/help/ruby/get-started.html```

Git: Install Link: ```https://git-scm.com/book/en/v2/Getting-Started-Installing-Git```

Ruby: Download Link: ```https://www.jetbrains.com/ruby/download/#section=windows```

Ruby: Install Link: ```https://www.jetbrains.com/help/ruby/install-and-set-up-product.html```

To activate Rubymine, Edit your Hosts file and add: ```0.0.0.0 account.jetbrains.com``` to the bottom of the Hosts file

Link on how to edit Hosts file: ```https://support.rackspace.com/how-to/modify-your-hosts-file/```

Open Rubymine and activate it using the code in the key.md file in the Repository folder:

Link to Repository: ```https://github.com/Fastcomm/Link_Regression_Tests/tree/master/features/support/Rubymine_key.md```

In Rubymine Open Terminal and run: "bundle install"

Open CMD and type ```gem install bundler```

**Update your Paths:**

Link: ```https://www.dev2qa.com/how-to-set-android-sdk-path-in-windows-and-mac/```

Press Windows key, type ```This PC```, Right Click on ```This PC``` and click on Properties
Click on Advanced System Settings
Click on Environmental Variables
Click on Advanced System Settings
Click on Advanced Environment Variables
Click on New under "System Variables"
Add Variable Name: ```ANDROID_HOME```
Add Variable Value: ```C:\Users\(Your Username)\AppData\Local\Android\Sdk```
Click Ok

Click on "Path" under System Variables and then click on Edit
Click on New and add: C:\Ruby26-x64
Click on New and add: %ANDROID_HOME%\tools
Click on New and add: %ANDROID_HOME%\tools\bin
Click on New and add: %ANDROID_HOME%\platform-tools
Click Ok

Click on New under User Variables
Add Variable Name: ```JAVA_HOME```
Add Variable Value: ```C:\Program Files\Java\jdk1.8.0_201```
Click Ok

Click on "Path" under User Variables and then click on Edit
Click on New
Enter "C:\Ruby26-x64\bin"
Click Ok

Click OK and close the system environment variables settings window, 
open a dos/cmd window, 
type command ```adb``` in it. 
If you see output like below that means the android sdk path variable has been configured successfully.

```
C:\Users\Werne>adb
Android Debug Bridge version 1.0.40
Version 4986621
Installed as C:\Users\Werne\AppData\Local\Android\Sdk\platform-tools\adb.exe
```

Restart your PC for all settings to take effect.
================================================================================================

**Emulator I prefer: Pixel 3a XL: API Level 26 - 28 - Android version 8x86.** 

#####The Nexus does not receive messages when sending to the emulator thus rather use the Pixel 3 emulator 

This is because certain code is used with the screen coordinates of this specific emulator screen size:

 ##Error with Emulator Camera - Emulator Camera crashing
 Go to Android Studio, Edit Emulator
  ```Change Camera from Virtual Scene to Emulated```
  
#[Emulator] For Ubuntu:

Got to Terminal and type the following:
```cd $ANDROID_HOME/tools```
OR
```cd Android/Sdk/tools```
Then
```./emulator @API27``` (this depends on how you setup your Emulator name in Android studio, Mine is "./emulator @API27")

#[Emulator] For Windows:

Got to CMD and type the following:
```cd C:\Users\ "Your Username here" \AppData\Local\Android\Sdk\tools\```

Then:

```emulator @API27```

#Simulating Slow Internet Connections on Android Emulators with Appium
Ensuring that software works for non-ideal cases is much more work than programming the happy-path behavior, and is perhaps more critical. Since app developers need to ensure apps work in all situations, app testers must test these situations too!

While worldwide cellular networks are growing and improving, even in the most developed cities you will encounter bad network connections throughout the day. Appium has the ability to adjust the network connectivity of Android Emulators with a simple desired capability:

```DesiredCapabilities caps = new DesiredCapabilities();``` 

```Regular desired capabilities``` 

```caps.setCapability("networkSpeed", "lte");```

The networkSpeed desired capability will change the upload and download speed accessible to the emulator. The following values can be set, all speeds are in kbps:

```gsm - GSM/CSD (up: 14.4, down: 14.4).```

```scsd - HSCSD (up: 14.4, down: 57.6).```

```gprs - GPRS (up: 28.8, down: 57.6).```

```edge - EDGE/EGPRS (up: 473.6, down: 473.6).```

```umts - UMTS/3G (up: 384.0, down: 384.0).```

```hsdpa - HSDPA (up: 5760.0, down: 13,980.0).```

```lte - LTE (up: 58,000, down: 173,000).```

```evdo - EVDO (up: 75,000, down: 280,000).```

```full - No limit, the default (up: 0.0, down: 0.0).```


#To Run UIAutomatorViewer in Windows:

CMD - Run Command:
```cd C:\Users\ "Your Username Here" \AppData\Local\Android\Sdk\tools\bin\```

then:

```uiautomatorviewer.bat```

**Configure the emulator:**

Enable Developer Mode on Emulator in Settings\System 

Check/enable ```Show Taps``` and ```Pointer Location```

Open Emulator Settings - On Emulator click on the Three Dots:

Set Latitude to ```-25.789454``` and Longitude to ```28.278992``` then click on SEND button.

For Chicago Location testing, Set Lat `````41.866550, -87.681983`````


Open PlayStore and enter credentials:

Username: ```linkappautomation@gmail.com```

Password: ```testing123```

Open Chrome Browser in Emulator:

Disable stats - Uncheck send feedback button, continue and sign in.

Create a ```"Link_Backup"``` folder in the device's ```SDCARD``` Location. 

Create a ```"Docs"``` folder in the device's ```Internal Memory``` Location. 

Drag the Chats Backup file under the ```Chat_backup``` folder from Rubymine to the emulator (If Testing Link).

Go to the Downloads folder on the Emulator and Move the file to the created ```SDCARD/Link_Backup``` folder.

Go to ```https://github.com/Fastcomm/ttrumpet_android/releases``` and download the latest QA Build

Move the file to the ```D:\Link_Regression_Tests\features\support``` folder, delete existing ```link_qa``` file and rename the copied APK to ```link_qa.apk```



#Errors and Solutions:

**When the gem 'EventMachine' has been added in Gemfile and you get:**
 
**"EventMachine error"**

**Do the Following:**
* Go to the folder ```C:\Ruby26-x64\lib\ruby\gems\2.6.0\gems\eventmachine-1.2.7-x64-mingw32\lib```
* Open this file ```eventmachine.rb``` in wordpad/gedit
* Paste the following in the first line of code in the file and Save the file:
```require 'em/pure_ruby'```

#Error - "WARNING: You must use ANSICON 1.31 or higher"

You need to Download Ansicon 1.4 or higher from
 ```https://github.com/adoxa/ansicon/downloads```

and unzip it into a directory with no spaces

Open command prompt and cd to the folder where you unzipped it

cd into either ```x86``` or ```x64``` (For example: ```cd D:\Cucumber\ansi160\x64```)

and install it globally on your machine: 

Type ```ansicon.exe –i``` OR ``` ansicon -i``` and press Enter

If you get: ```"ANSICON: cmd.exe: unsupported process."``` Then you are in the incorrect x64 or x86 folder

Any program that prints ANSI colors will now display properly on your machine.

##Error - Win32API is deprecated after Ruby 1.9.1; use fiddle directly instead.

Edit ```<Ruby_Install_Dir>\lib\ruby\<VERSION>\Win32API.rb``` comment out the "warn" line in the file.

For example:

```warn "Win32API is deprecated after Ruby 1.9.1; use fiddle directly instead", uplevel: 2```

##If your Tests fail immediately without a waiting/timeout period change the following:

```DEFAULT_IMPLICIT_WAIT = 0``` to ```DEFAULT_IMPLICIT_WAIT = 10``` 

in the ```appium_lib_core\driver.rb``` file

#Error - "You do not have permission - - This is for Ubuntu"
Go to terminal and type the following:
 ```sudo chmod 777 -R /var/lib/gems```
  
#Nice Tools to use:

Snagit - For Screenshots and Screen Recordings:

Download Link: ```https://www.techsmith.com/download/oldversions```

Snagit Key: ```http://machme.net/free-techsmith-snagit-2019-crack-serial-key-download/```

or

Snagit key: ```SXS38-USEZF-KWTBP-CMC7A-4MR85```
