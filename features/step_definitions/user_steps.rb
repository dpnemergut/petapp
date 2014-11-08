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

Given /^a user visits the signin page$/ do
  visit 'users/login'
end

When /^he submits invalid signin information$/ do
  click_button "commmit"
end

Then /^he should see an error message$/ do
  page.should have_selector('div.alert.alert-error')
end

Given /^the user has an account$/ do
  @user = User.create(:name => "Example User", :email => "user@example.com",
  :password => "foobar", :password_confirmation => "foobar")
end

When /^the user submits valid signin information$/ do
  fill_in "Email", :with => @user.email
  fill_in "Password", :with => @user.password
  click_button "commit"
end

Then /^he should see his profile page$/ do
  page.should have_selector('title', :text => @user.name)
end

Then /^he should see a signout link$/ do
  page.should have_link('Sign out', :href => signout_path)
end
