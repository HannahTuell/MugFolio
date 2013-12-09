Feature: Friends

Scenario: Add Friend
  Given I have an account
  And I am signed in 
  Then I sign out
  Then I click 'Sign up'
  When I fill in "user_name" with "Test Name 3"
  And I fill in "user_email" with "testemail3@test.com"
  And I fill in "user_password" with "testpassword"
  And I fill in "user_password_confirmation" with "testpassword"
  Then I press "Sign up"
  Then I should be signed in
  Then I should see a successful sign up message
  When I click on 'Users' 
  Then I should be on the Users Page
  And I should see testname
  #When I click on 'Add Friend'
  #Then I should see UnFriend  
  
Scenario: UnFriend
  Given I have an account
  And I am signed in 
  Then I sign out
  Then I click 'Sign up'
  When I fill in "user_name" with "Test Name 3"
  And I fill in "user_email" with "testemail3@test.com"
  And I fill in "user_password" with "testpassword"
  And I fill in "user_password_confirmation" with "testpassword"
  Then I press "Sign up"
  Then I should be signed in
  Then I should see a successful sign up message
  When I click on 'Users' 
  Then I should be on the Users Page
  And I should see testname
  #When I click on 'Add Friend'
  #Then I should see UnFriend  
  #When I click on 'UnFriend'
  #Then I should see Add Friend