Feature: Create Complaint/Suggestion 
	
	As a user
	After I login successfully
	I should be able to see my pet's information

Background: user information and pet infromation has been added to the database

	Given the following users exists:

	|username  |password |
	|santoshi  |hello    |

	Given the following pet exists :
	
	|petid |petname |breed    |color |dob        |interest |description |ownerfname |ownerlname |gender |
	|po1   |django  |labrador |grey  |2014-01-14 |stroll   |puppy       |test1      |test1lname |male   |
	
	And I am on the pet home page

Scenario: Create complaint/suggestion by user
        When I fill in "user_username" with "santoshi"
        And I fill in "user_password" with "hello"
        And I press "user_signin"
        And I should see pet profile page
        And I follow "complaints_suggestions"
        Then I should see complaints/suggestion page
        
