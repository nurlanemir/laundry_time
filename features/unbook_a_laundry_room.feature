@time
Feature: Unbook a laundry room
  As a user
  Incase I am to busy coding
  I would like to be able to cancel my laundry room

  Background:
    Given time is frozen at 2017-09-01
    And there is a laundry room
    And there is a user logged in
    
  Scenario: Cancel my laundry room
    Given I am on the index page
    When I click on "Unbook"
    Then I should see the text "You have unbooked the laundry room"