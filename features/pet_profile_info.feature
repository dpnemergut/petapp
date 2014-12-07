Feature: display the pet information in profile page
	
	As a user
	After I login successfully
	I should be able to see my pet's information

Background: user information and pet infromation has been added to the database

	Given the following user information exists in the database:

	|username |email            |password |petid |
	|test1    |test1@gmail.com  |pswd1    |p01   |

	Given that the following pet information exists in the database:
	
	|petid |petname |breed    |color |dob        |interest |description |ownerfname |ownerlname |gender |
	|p01   |django  |labrador |grey  |2014-01-14 |stroll   |puppy       |test1      |test1lname |male   |
	
	And I am on the pet home page

Scenario: pet profile page on successful login
	When I fill in "user_username" with "test1"
  And I fill in "user_password" with "pswd1"
  And I press "user_signin"
  Then I should see "django" in pet profile page.

Scenario: show all information about the pet on successful login
	When I fill in "user_username" with "test1"
  And I fill in "user_password" with "pswd1"
  And I press "user_signin"
  Then I should see the following information in the profile page: django, male, labrador, 2014-01-14, grey, stroll, puppy, test1
