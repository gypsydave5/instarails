When(/^I sign up normally as "(.*?)" from "(.*?)"$/) do |username, email|
  password = "12345678"
  fill_in "Email", with: email
  fill_in "Username", with: username
  fill_in "Password", with: password
  fill_in "Password confirmation", with: password
  click_on "Join Instarails"
end

When(/^I sign up using Facebook$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see "(.*?)"$/) do |arg1|
  expect(page).to have_content(arg1)
end

Then(/^I should be on the sign up page$/) do
  expect(current_path).to eq "/accounts/sign_up"
end

Then(/^I should be on the log in page$/) do
  expect(current_path).to eq "/accounts/sign_in"
end

Then(/^I should be on the homepage$/) do
  expect(current_path).to eq "/"
end

When(/^I fill in the form with these details:$/) do |table|
  table.rows_hash.each do |field, value|
    fill_in field, :with => value
  end
end
