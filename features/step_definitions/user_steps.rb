username = 'santoshi'
password = 'santoshi'

Given(/^I am not logged in$/) do
  visit '/users/login'
end

When(/^I go to homepage$/) do
  visit '/users/login'
end

Then(/^I should be in the login page$/) do
  current_path.should == '/users/login'
end

Given(/^I have an account$/) do
  User.new(:username => username, :password => password).save!
end

Given(/^I am on login page$/) do
  visit '/users/loginpage'
end

When(/^I fill in correct account information$/) do
  fill_in 'username', :with => username
  fill_in 'password', :with => password
end

When(/^press "(.*?)" button$/) do |button|
   click_button 'submit'
end

Then(/^I should see pet profile page$/) do
   current_path.should == '/users/petprofile'
end

Given(/^I have logged in$/) do
  User.new(:username => username, :password => password).save!
  visit '/users/login'
  fill_in 'username', :with => email
  fill_in 'Password', :with => password
  click_button 'submit'
end

Given(/^I am on petprofile page$/) do
  current_path.should == '/users/petprofile'
end

When(/^I click "(.*?)" link$/) do |link|
   click_link 'sign out'
end

Then(/^I should see homepage$/) do
  visit 'users/login'
end

Then(/^I click on 'become member' link$/) do
  click_link 'become member'
end

Then(/^I should see registration screen(\d+)$/) do |screen|
  visit 'users/registration screen1'
end
