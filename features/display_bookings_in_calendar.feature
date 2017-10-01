Feature: User can see the calendar
  As a user
  In order to book laundry time
  I would like to see a calendar

  Background:
    Given time is frozen at 2017-09-01
    And there is a laundry room
    And there is a user logged in
    And laundry is booked at "01 Sep 08:00"

  Scenario: User can navigate to calendar page
    Given I navigate to the index page
    Then I should see a calender
<<<<<<< HEAD:features/calendar.feature
=======
    And I should not see a calendar link "08:00" at 2017-09-01
    But I should see a calendar link "13:00" at 2017-09-01
>>>>>>> a1636826a59202b9c7d3ac5613bdca98fd476742:features/display_bookings_in_calendar.feature
