require 'selenium-webdriver'
driver = Selenium::WebDriver.for :firefox
driver.navigate.to 'https://www.google.com/'
google_search_input = driver.find_element(class: 'gLFyf')
google_search_input.send_keys('Elon Musk')
google_search_input.submit
sleep(5)
driver.find_element(partial_link_text: 'wikipedia').click
sleep(5)
driver.find_element(link_text: 'business magnate').click
sleep(5)
