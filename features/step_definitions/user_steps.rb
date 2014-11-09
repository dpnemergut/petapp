Given(/^the following users exist:$/) do |user_table|
  user_table.hashes.each do |user|
    
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
    User.create!(user)
   end
end

Given /^(?:|I )am on (.+)$/ do |page_name|
  visit path_to(page_name)
  #expect(current_path).to eq("/yourpet/sign_in")
  #current_path.expect == "/sign_in"
end

Then(/^I should see pet profile page\.$/) do
  expect(current_path).to eq("/yourpet/pet_profile")
end

Then(/^I should see sign up page$/) do
  expect(current_path).to eq("/yourpet/new_user")
end

Then(/^I should see forgot password page$/) do
  expect(current_path).to eq("/yourpet/forgot_password")
end


