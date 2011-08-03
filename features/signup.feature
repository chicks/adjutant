Feature: Signup
  In order to sign up new users

Scenario: create a new user 
  Given I am on the sign up page
  When I fill in the following:
    | First name            | Dwight             |
    | Last name             | Shrute             |
    | Email                 | dshrute@dm.com     |
    | Password              | letmein            | 
    | Password confirmation | letmein            | 
  And press "Sign up"
  Then I should see "Hello Dwight"
  And I should have a user with an email of "dshrute@dm.com" and a password of "letmein"

