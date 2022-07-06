require 'selenium-webdriver'

Given /^I am on the lazy automation text page$/ do
  $driver.navigate.to 'http://lazyautomation.co.uk/lazy1.html'
end

When /^I click on the Hello World button$/ do
  $driver.find_element(:id, 'hello1').click
end

Then /^Hello World text is displayed$/ do
  expect($driver.find_element(:id, 'test').text).to eq('HELLO WORLD')
end
