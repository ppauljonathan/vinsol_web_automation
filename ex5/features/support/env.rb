require 'selenium-webdriver'
require 'page-object'
require 'data_magic'

Before do |scenario|
  @driver = Selenium::WebDriver.for :firefox
  DataMagic.yml_directory = File.expand_path('features/data_magic')
  DataMagic.load 'login_data.yml'
end

After do |scenario|
  @driver.quit
end
