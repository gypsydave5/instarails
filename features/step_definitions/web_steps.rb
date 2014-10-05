require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

module WithinHelpers
  def with_scope(locator)
    locator ? within(locator) { yield } : yield
  end
end
World(WithinHelpers)

Given (/^(?:|that )(?:|I )am on (.+)$/) do |page_name|
  visit path_to(page_name)
end

When (/^(?:|I )go to (.+)$/) do |page_name|
  visit path_to(page_name)
end

When (/^(?:|I )click on "([^\"]*)"$/) do |target|
  click_on(target)
end

When (/^(?:|I )press "([^\"]*)"(?: within "([^\"]*)")?$/) do |button, selector|
  with_scope(selector) do
    click_button(button)
  end
end

When (/^(?:|I )follow "([^\"]*)"(?: within "([^\"]*)")?$/) do |link, selector|
  with_scope(selector) do
    click_link(link)
  end
end

When (/^(?:|I )fill in "([^\"]*)" with "([^\"]*)"(?: within "([^\"]*)")?$/) do |field, value, selector|
  with_scope(selector) do
    fill_in(field, :with => value)
  end
end

When (/^(?:|I )fill in "([^\"]*)" for "([^\"]*)"(?: within "([^\"]*)")?$/) do |value, field, selector|
  with_scope(selector) do
    fill_in(field, :with => value)
  end
end

# Use this to fill in an entire form with data from a table. Example:
#
#   When I fill in the following:
#     | Account Number | 5002       |
#     | Expiry date    | 2009-11-01 |
#     | Note           | Nice guy   |
#     | Wants Email?   |            |
#
# TODO: Add support for checkbox, select og option
# based on naming conventions.

Then (/^show me the page$/) do
  save_and_open_page
end
