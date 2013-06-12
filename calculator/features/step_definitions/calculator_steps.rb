Given(/^I am on the homepage$/) do
  visit '/'
end

Given(/^I fill in "(.*?)" in "(.*?)"$/) do |numbers, input|
  fill_in input, with: numbers
end

When(/^I click "(.*?)"$/) do |arg1|
  click_button arg1
end

Then(/^I should see "(.*?)" as the "(.*?)"$/) do |arg1, arg2|
  page.should have_content arg1
end