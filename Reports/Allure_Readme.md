Allure Cucumber Adaptor

Windows
For Windows, Allure is available from the Scoop commandline-installer. To Install Scoop: follow the video on: https://scoop.sh/

To install Allure, download and install Scoop and then execute in the Powershell:

Open Terminal:
Type:
    
    Powershell
then,

    iex (new-object net.webclient).downloadstring('https://get.scoop.sh')```
then,
    
    scoop install allure

Also Scoop is capable of updating Allure distribution installations. To do so navigate to the Scoop installation directory and execute

    \bin\checkver.ps1 allure -u
This will check for newer versions of Allure, and update the manifest file. Then execute

    scoop update allure

Cucumber versions
allure-cucumber versions <= 2.13.4 support only cucumber 3 and lower
allure-cucumber versions >= 2.13.5 only support cucumber 4 and are not backwards compatible with cucumber 3 and lower

Installation
Add this line to your application's Gemfile:

    gem "allure-cucumber"
And then execute:
    
    bundle
Or install it yourself as:

    gem install allure-cucumber

Configuration
Common allure configuration is set via AllureCucumber.configure method. To change it, add the following in features/support/Reporting_env.rb file:

Add the following to the "support/Reporting_env.rb" file:

```require "allure-cucumber"```

```AllureCucumber.configure do |config|```
	```#config.results_directory = "/Reports/Allure/"```
	```#config.clean_results_directory = true```
	```#config.logger = Logger::INFO```
	```config.tms_prefix      = 'LATCH_ANDROID--'```
	```config.issue_prefix    = 'JIRA++'```
	```config.severity_prefix = 'URGENCY:'```
	```# these are used for creating links to bugs or test cases where {} is replaced with keys of relevant items```
	```#config.link_tms_pattern = 'http://www.jira.com/browse/{}'```
	```#config.link_issue_pattern = 'http://www.jira.com/browse/{}'*```
```end```

By default, allure-cucumber will analyze your cucumber tags looking for Test Management, Issue Management, and Severity tag. Links to TMS and ISSUE and test severity will be displayed in the report. By default these prefixes are used:

    DEFAULT_TMS_PREFIX      = 'TEST:'
    DEFAULT_ISSUE_PREFIX    = '@SCENARIO:'
    DEFAULT_SEVERITY_PREFIX = 'URGENCY:'

    ex:
    @TEST:Latch_Android
    @SCENARIO:Critical_Regression
    @URGENCY:Critical
    
    Scenario: Leave First Name Blank
    When I Sign In
    Then I should see main window

You can configure these prefixes as well as tms and issue tracker urls like this:
Additional special tags exists for setting status detail of test scenarios, allure will pick up following tags: @flaky, @known and @muted

Put the following in the Cucumber.yml file
    
    default: --format html --format AllureCucumber::CucumberFormatter --out Reports/Allure

You can also manually attach screenshots and links to test steps and test cases by interacting with allure lifecycle directly.

Add the following to your hooks.rb file

    	screenshot = driver.save_screenshot(Dir.pwd + "/screenshots/#{@failed_sc_count}_Failed_sc_#{scenario.name.gsub(' ', '_')}.png") ## Set the screenshot path and screenshot name
    	Allure.add_attachment(name: "Failed Screenshot", source: screenshot, type: Allure::ContentType::PNG, test_case: true)

To run in Terminal add: 

    $ cucumber feature/01_sign_in.feature --format AllureCucumber::Formatter

STEP 7 Generate a report - Follow instructions in Reporting_env.rb

run 
    
    $ allure serve Reports/Allure/allure-results # This will open the allure index.html on the browser where you can view the report.

##If Allure is not setup correctly, try the following in Windows:

Download the latest version as zip archive from Maven Central

http://repo.maven.apache.org/maven2/io/qameta/allure/allure-commandline/.
Unpack/Unzip the archive to allure-commandline directory.

Navigate to bin directory.

Use allure.bat for Windows or allure for other Unix platforms.

Add allure bin path to system PATH.