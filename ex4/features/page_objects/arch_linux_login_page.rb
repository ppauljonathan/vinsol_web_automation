require 'selenium-webdriver'
require 'capybara/dsl'
require 'capybara'
require 'site_prism'

require_relative './arch_linux_main_page.rb'

# Capybara.default_driver = :selenium
#   Capybara.register_driver :selenium do |app|
#     Capybara::Selenium::Driver.new(app, browser: :firefox)
#   end
class ArchLinuxLoginPage < SitePrism::Page
  set_url 'https://bbs.archlinux.org/login.php'
  element :username, 'input[name="req_username"]'
  element :password, 'input[name="req_password"]'
  element :submit_button, 'input[name="login"]'

  def fill_form_fields(uname, passwd)
    self.username.set(uname)
    self.password.set(passwd)
  end

  def submit
    self.submit_button.click
  end
end

# a = ArchLinuxLoginPage.new
# a.load
# a.fill_form_fields('jonathan_arch_linux_user', 'nFUUmemQezSD')
# sleep(2)
# a.submit
# sleep(5)
# a2 = ArchLinuxMainPage.new
# p a2.isLoggedIn
