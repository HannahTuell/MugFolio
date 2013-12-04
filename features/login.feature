Feature: login to MugFolio
 
  As an avid user of the internet 
  So that I can keep in touch with friends and family
  I want want to login to MugFolio

Scenario:sign in to MugFolio
  When I follow "Sign In"
  Then I am on the Sign In page
  When I fill in user_email with email
  And I fill in user password with password
  And I press "Sign In"
  Then I should be a user
  Then I should be on homepage

Scenario: sign out of MugFolio
  Given I am Signed In
  When I follow "Sign Out"
  Then I am on Sign Out page

Scenario: sign up for MugFolio
  When I follow "Sign Up"
  Then I should be on Sign Up page
  When I fill in user_email with my email
  And I fill in user_password with my password
  And I fill in user_password_confirmation with password
  And I fill in user_name with name
  Then I press "Sign Up"
  Then I am on MugFolio homepage

Scenario: Forgot your password?
  When I follow "Forgot your password?" 
  Then I should be on forgot password page
  When I fill in user_email with my email
  Then I press "Send me reset password instructions"
     
