Feature: Sign in and out
  In order to get access to protected sections of the site
  A user
  Should be able to sign in
      
Scenario: User tries signing up with a password that is too short
  Given I am on the Sign Up page
  When I fill in "user_email" with "testemail2@test.com"
  And I fill in "user_password" with "test"
  And I fill in "user_password_confirmation" with "test"
  Then I press "Sign up"
  Then I should see a password too short error message
  And I should be signed out 

Scenario:sign in to MugFolio 
  Given I am on the Sign In page
  And I have an account
  And I am signed in
  Then I see a successful sign in message

Scenario: sign out of MugFolio 
  Given I have an account
  And I am signed in
  When I sign out
  Then I am on the homepage
  And I should be signed out

Scenario: sign up for MugFolio 
  Given I am on the Sign Up page
  When I fill in "user_name" with "Test Name 2"
  And I fill in "user_email" with "testemail2@test.com"
  And I fill in "user_password" with "testpassword"
  And I fill in "user_password_confirmation" with "testpassword"
  Then I press "Sign up"
  Then I should be signed in
  Then I should see a successful sign up message

Scenario: Forgot your password?
  Given I have an account
  When I click on 'Forgot your password'
  Then I am on forgot password page
  Then I should be on forgot password page
  When I fill in "user_email" with "testemail@test.com"
  Then I press "Send me reset password instructions"
  Then I am on the homepage
  And I should be on the Sign In page

 


