require 'selenium-webdriver'

When ("I enter {string} into the text field") do |text|
  $driver.find_element(:id, 'textfield1').send_keys(text)
end

Then ("text field is populated with {string}") do |text|
   expect($driver.find_element(:id, 'textfield1').attribute('value')).to eq(text)
end
