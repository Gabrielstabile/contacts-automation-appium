require 'rspec'
require 'rubygems'
require 'appium_lib_core'
require 'yaml'
require 'appium_lib'
require 'require_all'


  otps = {
    caps: {
    'deviceName' => 'Emulator',
    'platformName' => 'Android',
    # 'platformVersion' => '11',
    'appPackage' => 'com.android.contacts',
    'appActivity' => 'com.android.contacts.activities.PeopleActivity',
    'newCommandTimeout'=>'3600',
    #'automationName'=> 'UiAutomator2',
    'autoGrantPermissions'=> true,
    'autoDissmissAlerts' => true,
    'autoAcceptAlerts' => true,
    'adbExecTimeout' => '15000',
    'androidInstallTimeout' => '15000'
    }
  }
  
RSpec.configure do |config|
  config.before(:each) do
    @driver = Appium::Driver.new(otps, true)
    @driver.start_driver
    @driver.set_wait 15
    Appium.promote_appium_methods Object
  end

  config.after(:each) do
    @driver.driver_quit
  end

end
