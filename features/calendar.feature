Feature: User can see the calendar
  As a user
  In order to book laundry time
  I would like to see a calendar

  Background:
    Given time is frozen at 2017-09-01
    And there is a laundry room
    And there is a user logged in

  Scenario: User can navigate to calendar page
    Given I navigate to the index page
    Then I should see a calender
