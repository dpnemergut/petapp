Feature: register new users from the login page

    As a user
    From the login page
    I should be able to create a new account

Background: 
     Given the following users exists:

	|username |email            |first_name|last_name|password |password_confirmation |petid |securityQuestion|securityAnswer|
	|test1    |test1@gmail.com  |test    |test   |test|test|p01|test|test|

	Given the following pet exists :
	
	|petid |petname |breed    |color |dob        |interest |description |gender |
	|p01   |django  |labrador |grey  |2014-01-14 |stroll   |puppy       |male   |
	
	And I am on the pet home page

Scenario: Successful creation of new account with valid data
    
    When I follow "user_signup"
    And I fill in "user_username" with "test1"
    And I fill in "user_email" with "test1@gmail.com" 
    And I fill in  "user_first_name" with "test"
    And I fill in  "user_last_name" with "test"
    And I fill in  "user_password" with "test"
    And I fill in  "user_password_confirmation" with "test"
    And I fill in  "user_securityQuestion" with "test"
    And I fill in  "user_securityAnswer" with "test"
    And I press "newuser"
    And I fill in "pet_petname" with "django"
    And I fill in "pet_breed" with "labrador" 
    And I fill in  "pet_color" with "grey"
    And I fill in  "pet_interest" with "stroll"
    And I fill in  "pet_description" with "puppy"
    And I fill in  "pet_gender" with "test"
    And I press "newpet"
    Then I should see pet profile page

 
    

