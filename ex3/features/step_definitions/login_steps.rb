require_relative '../page_definitions/arch_linux_login.rb'

Given('We are on arch linux login page') do
  @arch_linux_login = ArchLinuxLoginPage.new(@driver)
  @arch_linux_login.goto_login_page
end

When('We login with correct username and password') do
  @arch_linux_login.pop_page('all_correct')
  @arch_linux_login.login_with_credentials
  sleep(10)
end

Then('We are redirected to login page') do
  expect(@arch_linux_login.is_logged_in?).to eq(true)
end

When('We login with incorrect username') do
  @arch_linux_login.pop_page('username_wrong')
  @arch_linux_login.login_with_credentials
end

Then('We are redirected to error page') do
  expect(@arch_linux_login.is_logged_in?).to eq(false)
end

When('We login with incorrect password') do
  @arch_linux_login.pop_page('password_wrong')
  @arch_linux_login.login_with_credentials
end

When('We login with incorrect username and password') do
  @arch_linux_login.pop_page('both_wrong')
  @arch_linux_login.login_with_credentials
end

