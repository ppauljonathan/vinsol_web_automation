require 'selenium-webdriver'
require 'capybara/dsl'
require 'capybara'
require 'site_prism'

class ArchLinuxMainPage < SitePrism::Page
  set_url 'https://bbs.archlinux.org/index.php'
  set_url_matcher /bbs.archlinux.org\/login.php/
  def isLoggedIn
    self.has_content?('Logout')
  end
end
  
