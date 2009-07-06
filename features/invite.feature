@invite
Feature: Invite
  In order to get people to join gift exchange
  A user
  Should be able to invite others to the exchange

	Scenario: A user invites three others to join their gift exchange
  	Given I am signed up and confirmed as "email@person.com/password"
		When I sign in as "email@person.com/password"
		And I go to the invite page
		And I fill in "Name" with "The Smith's Gift Exchange"
		And I fill in "Email" with "email@person1.com"
    And I fill in "Password" with "password"
    And I fill in "Confirm password" with "password"
#		And I follow "Invite another"
#		And I fill in "Email" with "email@person2.com"
#		And I follow "Invite another"
#		And I fill in "Email" with "email@person3.com"
		And I press "Submit"
    Then I should see "Invitations being sent..."
    And a confirmation message should be sent to "email@person1.com"
#    And a confirmation message should be sent to "email@person2.com"
#    And a confirmation message should be sent to "email@person3.com"

  Scenario: A user accepts an invitation to join another user's gift exchange
    Given I received an invitation with "email@person1.com"
    When I follow the confirmation link sent to "email@person1.com"
    Then I should see "Please provide a user name and a password to complete registration"
    And I should be signed in
		And I should see "The Smith's Gift Exchange" 
