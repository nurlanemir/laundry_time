Feature: As a user in order to use the application
    I should be able to sign up for account

    Background:
      Given the following users exists
        | name    | email            | password | password_confirmation |
        | unicorn | unicorn@test.com | password | password              |

    Scenario: Register User
      Given I navigate to the index page
      And I click on "Sign Up"
#      And I fill in "Name" with "unicorn"
      And I fill in "Email" with "unicorn@test.com"
      And I fill in "Password" with "password"
      And I fill in "Password confirmation" with "password"
      And I click on "Sign up"
      And I should see the text "Welcome! You have signed up successfully."
