Feature: Create Complaint/Suggestion 
	
	As a user
	After I login successfully
	I should be able to see my pet's information

Background: user information and pet infromation has been added to the database

	Given the following users exists:

	|username  |password |petid |password_confirmation |
	|santoshi  |hello    |p01   |hello                 |
  |admin     |admin    |p02   |admin                 |

	Given the following pet exists :
	
	|petid |petname |breed    |color |dob        |interest |description |ownerfname |ownerlname |gender |
	|p01   |django  |labrador |grey  |2014-01-14 |stroll   |puppy       |test1      |test1lname |male   |
	
	And I am on the pet home page

Scenario: Create complaint/suggestion by user
        When I fill in "user_username" with "santoshi"
        And I fill in "user_password" with "hello"
        And I press "user_signin"
        And I should see pet profile page
        And I follow "complaints_suggestions"
        Then I should see complaints/suggestion page

Scenario: Admin should see all complaints/suggestions
        When I fill in "user_username" with "admin"
        And I fill in "user_password" with "admin"
        And I press "user_signin"
        Then I should see adminview page

Scenario: When Clicked on Complaints/Suggestions in admin view should see complaint and suggestion page
				When I fill in "user_username" with "admin"
        And I fill in "user_password" with "admin"
        And I press "user_signin"
        And I should see adminview page
        And I follow "View Complaints"
        Then I should see complaints page

        
