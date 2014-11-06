Feature: Authenticate
  Scenario: Login Page
    Given I am not logged in
    When I go to homepage
    Then I should be in the login page

 Scenario: Login action
    Given I have an account
    And I am on login page
    When I fill in correct account information
    And press "submit" button
    Then I should see pet profile page

  Scenario: Logout action
    Given I have logged in
    And I am on petprofile page
    When I click "Sign out" link
    Then I should see homepage

 Scenario: Become member
    Given I am not logged in
    When I go to homepage
    Then I should be in the login page
    Then I click on 'become member' link
    Then I should see registration screen1


