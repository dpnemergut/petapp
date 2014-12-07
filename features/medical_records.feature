Feature: Medical Record Page
    
    In order to view the associated medical information for my pet
    As a user
    From the a pet's profile page
    I should be able to link to the pet's medical information page

Background:

    Given the following user information exists in the database:

	|username |email            |password |petid |
	|test1    |test1@gmail.com  |pswd1    |1     |

    Given that the following pet information exists in the database:
	
	|id|petid |petname |breed    |color |dob        |interest |description |ownerfname |ownerlname |gender |
	|1 |p01   |django  |labrador |grey  |2014-01-14 |stroll   |puppy       |test1      |test1lname |male   |

    Given that the following medical information exists in the database:

	|id |pet_id |rabies    |distemper  |conditions  |
	|1  |1      |10/02/2014|10/02/2014 |acne        |
  
    Given I am on the pet home page
    When I fill in "user_username" with "test1"
    And I fill in "user_password" with "pswd1"
    When I press "user_signin"
    Then I should be on the pet profile page
    When I follow "Medical Records"
    Then I should be on the medical records page
    And I should see the medical record for pet id 1


Scenario: Go Back

    When I follow "Back"
    Then I should be on the pet profile page

Scenario: Edit

    When I follow "Edit"
    Then I should be on the edit medical record page
    When I fill in "medical_record_conditions" with "Meatloaf Allergy"
    And I press "Update Medical record"
    Then I should be on the medical records page
    And I should see "Meatloaf Allergy"


