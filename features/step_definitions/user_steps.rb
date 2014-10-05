Given(/^that I am signed in$/) do
  visit "/accounts/sign_up"
  password = "12345678"
  fill_in "Email", with: "my@email.com"
  fill_in "Username", with: "mememememe"
  fill_in "Password", with: password
  fill_in "Password confirmation", with: password
  click_on "Join Instarails"
end

Given(/^that "(.*?)" has an account$/) do |username|
  visit '/accounts/sign_up'
  steps %Q{
  When I sign up normally as "#{username}" from "#{username}@#{username}.com"
  And I click on "Sign out"
  }
end
