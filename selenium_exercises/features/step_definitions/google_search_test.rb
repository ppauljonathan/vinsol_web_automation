require 'selenium-webdriver'

Given("I am on the google homepage") do
  $driver.navigate.to 'https://www.google.com'
end

Given("I have populated the search bar with {string}") do |query|
  $driver.find_element(class: 'gLFyf').send_keys(query)
end
  
When("I submit the search result") do
  $driver.find_element(class: 'gLFyf').submit
end

Then("the search page bar should be equal to {string}") do |query|
  expect($driver.find_element(class: 'gLFyf').attribute('value')).to eq(query)
end
