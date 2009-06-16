@invite
Feature: Invite
  In order to get people to join gift exchange
  A user
  Should be able to invite others to the exchange

	Scenario: A user invites others to his exchange
		When I go to the invite page
		And I fill in "Name" with "The Smith's Gift Exchange"
		And I fill in "Email" with "email@person1.com"
		And I follow "Invite another"
		And I fill in "Email" with "email@person2.com"
		And I follow "Invite another"
		And I fill in "Email" with "email@person3.com"
		And I press "Submit"
    Then I should see "Invitations being sent..."
    And a confirmation message should be sent to "email@person1.com"
    And a confirmation message should be sent to "email@person2.com"
    And a confirmation message should be sent to "email@person3.com"

