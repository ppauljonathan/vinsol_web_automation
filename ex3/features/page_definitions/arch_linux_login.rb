require 'selenium-webdriver'
require 'rspec'
require 'page-object'

class ArchLinuxLoginPage
  include PageObject
  
  text_field(:username, :name => 'req_username')
  text_field(:password, :name => 'req_password')
  button(:submit, :name => 'login')

  def goto_login_page
    navigate_to 'https://bbs.archlinux.org/login.php'
  end

  def is_logged_in?
    @browser.find_elements(:class, 'error-list').empty?
  end

  def login_with_credentials(uname, passwd)
    self.username = uname
    self.password = passwd
    submit
  end
end

# driver = Selenium::WebDriver.for :firefox
# login_page = ArchLinuxLoginPage.new(driver)
# login_page.goto_login_page
# login_page.login_with_credentials('jonathan_arch_linux_user', 'nFUUmemQezSD')
# sleep(10)
# login_page.login_with_credentials('jkl;', 'jkiolpgfd')
# expect(login_page.is_logged_in?).to eq(true)
# p login_page.is_logged_in?
