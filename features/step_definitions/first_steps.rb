#remember to run bundle exec rake db:migrate RAILS_ENV=test
#http://loudcoding.com/posts/quick-tutorial-starting-with-cucumber-and-capybara-bdd-on-rails-project/
require File.expand_path(File.join(File.dirname(__FILE__), "..",  "support", "paths"))
Given /^I am on (.+),$/ do |page_name|
  visit path_to(page_name)
end

When /^I follow (.+),$/ do |link|
  click_link(link)
end

Then /^I should be in the (.+)[,\.]$/ do |page_name|
  current_path.should == path_to(page_name)
end

When /^I fill in the (.+) with (.+),$/ do |field, value|
  fill_in(field.gsub(' ', '_'), :with => value)
end

When /^I select (.+) from (.+),$/ do |value, field|
  select(value, :from => field)
end

When /^I press (.+),$/ do |button|
  click_button(button)
end

Then /^I should see (.+)$/ do |text|
  page.should have_content(text)
end

