require 'selenium-webdriver'
require 'capybara/dsl'
require 'capybara'
require 'site_prism'

class ArchLinuxMainPage < SitePrism::Page
  def isLoggedIn
    self.has_content?('Logout')
  end
end
  
