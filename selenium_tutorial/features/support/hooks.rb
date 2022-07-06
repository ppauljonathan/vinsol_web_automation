Before do |scenario|
  $driver = Selenium::WebDriver.for :firefox
end

After do |scenario|
  $driver.quit
end
