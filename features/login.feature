Feature: login to MugFolio
 
  As an avid user of the internet 
  So that I can keep in touch with friends and family
  I want want to login to MugFolio

#Scenario:sign in to MugFolio
  #Given I am on the Sign In page
  #When I fill in "user_email" with "testemail@test.com"
  #And I fill in "user_password" with "testpassword"
  #And I press "Sign in"
  #Then I should be a user
  #Then I should be on homepage

Scenario: sign out of MugFolio
	Given I have an account
	And I am signed in
  When I sign out
  Then I am on the homepage
	And I should see "Homepage"

#Scenario: sign up for MugFolio
  #When I follow "Sign Up"
  #Then I am on the Sign Up page
  #Then I should be on Sign Up page
  #When I fill in "user_email" with "testemail@test.com"
  #And I fill in "user_password" with "testpassword"
  #And I fill in "user_password_confirmation" with "testpassword"
  #Then I press "Sign Up"
  #Then I am on MugFolio homepage

#Scenario: Forgot your password?
  #When I follow "Forgot your password?" 
  #Then I am on forgot password page
  #Then I should be on forgot password page
  #When I fill in "user_email" with "testemail@test.com"
  #Then I press "Send me reset password instructions"

Scenario: view profile
	Given I have an account
	And I am signed in
	When I click on 'View Profile'
	Then I am on the Profile View
     
