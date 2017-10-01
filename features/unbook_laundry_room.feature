Feature: user should be able to unbook time in laundry room
  As a user
  In order to cancel my laundry time
  I would like to be able to unbook a laundry time

  Background:
    Given there is a laundry room
    And there is a user logged in

  Scenario: User can unbook a laundry time
    Given user visits the booking page
    And I click on "Unbook"
    Then I should see the text "You have successfully canceled your booking."