Given(/^that I am not signed in$/) do
end

Then(/^I should not be able to see "(.*?)"$/) do |arg1|
  expect(page).not_to have_content(arg1)
end

Then(/^I should be on the new post page$/) do
  expect(current_path).to match(/users\/\d+\/posts\/new/)
end

When(/^I write "(.*?)" in the "(.*?)" field$/) do |content, field|
  fill_in field, with: content
end

When(/^I put add the path for a picture in the picture field$/) do
  attach_file "Image", File.expand_path("features/test_images/test_image.jpg")
end

Given(/^that I have clicked on "(.*?)"$/) do |target|
  visit '/'
  click_on target
end

Then(/^I should see the image "(.*?)"$/) do |image|
  expect(page.find('img')['src']).to have_content(image)
end
