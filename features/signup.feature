Feature: Signup
  In order to sign up new users

Scenario: create a new user with a valid employee record
  Given I am the following employee:
    | name                  | Dwight Shrute             |
  And I am on the sign up page
  When I fill in the following:
    | Name                  | Dwight Shrute             |
    | Email                 | dshrute@dundermifflin.com |
    | Password              | letmein                   | 
    | Password confirmation | letmein                   | 
  And press "Sign up"
  Then I should see "Hello Dwight Shrute"
  And I should have a user named "Dwight Shrute" with a password of "letmein"

Scenario: prevent a user from signing up who does not have a valid employee record
  Given I am on the sign up page
  When I fill in the following:
    | Name                  | Danny Cordray             |
    | Email                 | dcordray@osprey.com       |
    | Password              | irule!                    | 
    | Password confirmation | irule!                    | 
  And press "Sign up"
  Then I should see "I'm sorry, this application is for Employees only"
