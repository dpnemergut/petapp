Feature: Authentication
  As a user
  I want to sign in
  So I can use service features
 
Background:users have been added to database

  Given the following users exist:
  | username                | password      | 
  | santoshi                | hello         | 
  | rose                    | rani          | 
  
  And I am on the pet home page
 
Scenario: Signing in with correct credentials
  When I fill in "user_username" with "santoshi"
  And I fill in "user_password" with "hello"
  And I press "user_signin"
  Then I should see pet profile page.
 
Scenario: User tries to sign in with incorrect password
  When I fill in "user_username" with "santoshi"
  And I fill in "user_password" with "InvalidPassword"
  And I press "user_signin"
  Then I should see "Unknown user. Please check your username and password."

Scenario: Sign up
  When I follow "user_signup"
  Then I should see sign up page

Scenario: forgot password
  When I follow "user_forgotpassword"
  Then I should see forgot password page
