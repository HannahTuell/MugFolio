Feature: Sign in
  In order to get access to protected sections of the site
  A user
  Should be able to sign in

#Scenario: User is not signed up
#  Given I do not exist as a user
#  When I sign in with valid credentials
#  Then I see an invalid login message
#  And I should be signed out

#Scenario: User signs in successfully
#  Given I exist as a user
#  And I am not logged in
#  When I sign in with valid credentials
#  Then I see a successful sign in message
#  When I return to the site
#  Then I should be signed in

#Scenario: User enters wrong email
#  Given I exist as a user
#  And I am not logged in
#  When I sign in with a wrong email
#  Then I see an invalid login message
#  And I should be signed out
      
#Scenario: User enters wrong password
#  Given I exist as a user
#  And I am not logged in
#  When I sign in with a wrong password
#  Then I see an invalid login message
#  And I should be signed out

Scenario:sign in to MugFolio
  Given I am on the Sign In page
  When I fill in "user_email" with "testemail@test.com"
  And I fill in "user_password" with "testpassword"
  And I press "Sign in"
  Then I have an account
  Then I am on the homepage
  And I should see "Homepage"

Scenario: sign out of MugFolio
  Given I have an account
  And I am signed in
  When I sign out
  Then I am on the homepage
  And I should see "Homepage"

Scenario: sign up for MugFolio
  When I click on 'Sign Up'
  Then I am on the Sign Up page
  Then I should be on Sign Up page
  When I fill in "user_email" with "testemail@test.com"
  And I fill in "user_password" with "testpassword"
  And I fill in "user_password_confirmation" with "testpassword"
  Then I press "Sign Up"
  Then I am on MugFolio homepage

Scenario: Forgot your password?
  Given I have an account
  When I click on 'Forgot your password'
  Then I am on forgot password page
  Then I should be on forgot password page
  When I fill in "user_email" with "testemail@test.com"
  Then I press "Send me reset password instructions"
  Then I am on the homepage
	And I should see "Homepage"

Scenario: view profile
	Given I have an account
	And I am signed in
	When I click on 'View Profile'
	Then I am on the Profile View

