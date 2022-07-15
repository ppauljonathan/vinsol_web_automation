require_relative '../page_definitions/arch_linux_login.rb'

Given('We are on arch linux login page') do
  @arch_linux_login = ArchLinuxLoginPage.new(@driver)
  @arch_linux_login.goto_login_page
end

When('We login with correct username and password') do
  @arch_linux_login.login_with_credentials('jonathan_arch_linux_user', 'nFUUmemQezSD')
  sleep(10)
end

Then('We are redirected to login page') do
  expect(@arch_linux_login.is_logged_in?).to eq(true)
end

When('We login with incorrect username') do
  @arch_linux_login.login_with_credentials('hello', 'nFUUmemQezSD')
end

Then('We are redirected to error page') do
  expect(@arch_linux_login.is_logged_in?).to eq(false)
end

When('We login with incorrect password') do
  @arch_linux_login.login_with_credentials('jonathan_arch_linux_user', 'fdhsuaiiudjkf')
end

When('We login with incorrect username and password') do
  @arch_linux_login.login_with_credentials('hello', 'dssfjkldsdf')
end

