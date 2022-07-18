require_relative '../page_objects/arch_linux_login_page.rb'
require_relative '../page_objects/arch_linux_main_page.rb'

Given "We are on Arch Linux login page" do
 @main_page = ArchLinuxMainPage.new
 @login_page = ArchLinuxLoginPage.new
 @login_page.load
end

When "We enter the correct details in the fields" do
  @login_page.fill_form_fields('jonathan_arch_linux_user', 'nFUUmemQezSD')
  sleep(2)
  @login_page.submit
  sleep(5)
end

Then "We are logged in" do
  expect(@main_page.isLoggedIn).to eq(true)
end

