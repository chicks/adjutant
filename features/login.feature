Feature: Login
  In order to login users

Scenario: login a user 
  Given the following user:
    | first_name          | Dwight               |
    | last_name           | Shrute               |
    | email               | dshrute@dm.com       |
    | password            | letmein              |    
  And I am on the login page
  When I enter my credentials
    | Email                 | dshrute@dm.com     |
    | Password              | letmein            | 
  And press "Sign in"
  Then I should see "Hello Dwight"
  And  I should see "My Identities"

