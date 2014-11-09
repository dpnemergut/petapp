Feature: register new users from the login page

    As a user
    From the login page
    I should be able to create a new account

Background: 
     Given I am on login

Scenario: Successful creation of new account with valid data
    
    When I push "Become a member!"
    And I put "John" in the Owner_FirstName field
    And I put "Doe" in the Owner_LastName field
    And I put "jd@anon.com" in the Email field
    And I put "5555555555" in the Phone_number field
    And I put "password" in the Password field
    And I put "password" in the Confirm_password field
    And I push "Next"
    And I put "Scruffy" in the Pet_Name field
    And I put "Male" in the Gender field
    And I put "Dog" in the Breed field
    And I put "White" in the Color field
    And I put "1/1/2010" in the DOB field
    And I put "None" in the Play_Interest field
    And I put "None" in the Description field
    And I push "Submit"
    Then I should be on petprofile
     
Scenario: Failure to fill in required fields
    When I push "Become a member"
    And I put "John" in the Owner_FirstName field
    And I put "Doe" in the Owner_LastName field
    And I put "5555555555" in the Phone_number field
    And I put "password" in the Password field
    And I put "password" in the Confirm_password field
    And I push "Next"
    Then I should see "Email is required"
