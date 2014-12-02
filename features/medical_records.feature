Feature: Medical Record Page
    
    In order to view the associated medical information for my pet
    As a user
    From the a pet's profile page
    I should be able to link to the pet's medical information page

Background:

    Given that the following pet information exists in the database:
	
	|petid |petname |breed    |color |dob        |interest |description |ownerfname |ownerlname |gender |
	|po1   |django  |labrador |grey  |2014-01-14 |stroll   |puppy       |test1      |test1lname |male   |

    Given that the following medical information exists in the database:

	|id |pet_id |rabies    |distemper  |conditions  |
	|1  |po1    |10/02/2014|10/02/2014 |10/02/2014  |

    Given I am on the pet profile page


Scenario: Visit Medical Records Page
    
    When I press "Medical Records"
    Then I should be on the medical records page
    And Then I should see "django"
    And Then I should see "10/02/2014"
