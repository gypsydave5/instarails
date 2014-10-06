Given(/^that I am signed in$/) do
  user = create(:user)
  login_as(user, :scope => :user)
end

Given(/^that "(.*?)" has an account$/) do |username|
  create(:user, username: username)
end

Given(/^I am signed in as "(.*?)"$/) do |name|
  user = create(:user, username: name)
  login_as(user, :scope => :user)
end

When(/^I sign in as "(.*?)"$/) do |user|
  this_user = User.find_by(username: user)
  login_as(this_user, :scope => :user)
end
