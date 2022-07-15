require 'selenium-webdriver'
require 'page-object'

Before do |scenario|
  @driver = Selenium::WebDriver.for :firefox
end

After do |scenario|
  @driver.quit
end
