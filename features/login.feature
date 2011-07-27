Feature: Login
  In order to login users

Scenario: login a user 
  Given the following employee:
    | name | Dwight Shrute |
  And that employee has the following user:
    | name                | Dwight Shrute               |
    | email               | dshrute@dundermifflin.com   |
    | password            | letmein                     |    
  And I am on the login page
  When I enter my credentials
    | Email                 | dshrute@dundermifflin.com |
    | Password              | letmein                   | 
  And press "Sign in"
  Then I should see "Hello Dwight Shrute"

Scenario: perform pass-through signup for an employee
  Given the following employee:
    | name | Dwight Shrute |
  And I am on the login page
  When I enter my credentials
    | Email                 | dshrute@dundermifflin.com |
    | Password              | letmein                   | 
  And press "Sign in"
  Then I should see "Hello Dwight Shrute"
  And I should have a user named "Dwight Shrute" with a password of "letmein"
