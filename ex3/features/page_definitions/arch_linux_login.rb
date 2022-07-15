require 'selenium-webdriver'
require 'rspec'
require 'page-object'
require 'data_magic'

class ArchLinuxLoginPage
  include PageObject
  include DataMagic


  text_field(:username, :name => 'req_username')
  text_field(:password, :name => 'req_password')
  button(:submit, :name => 'login')

  def goto_login_page
    navigate_to 'https://bbs.archlinux.org/login.php'
  end

  def pop_page(scenario)
    populate_page_with data_for 'login_data/' + scenario
  end

  def is_logged_in?
    @browser.find_elements(:class, 'error-list').empty?
  end

  def login_with_credentials
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
