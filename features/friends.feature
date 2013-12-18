Feature: Friends

Scenario: Add Friend
  Given I have an account
  And I am signed in 
  Then I sign out
  Then I click on link "Sign up"
  When I fill in "user_name" with "Test Name 3"
  And I fill in "user_email" with "testemail3@test.com"
  And I fill in "user_password" with "testpassword"
  And I fill in "user_password_confirmation" with "testpassword"
  Then I press "Sign up"
  Then I should be signed in
  Then I should see "Welcome! You have signed up successfully."
  When I click on link "Friends" 
  Then I should be on the Friends Page
  And I should see "Test Name 3"
  When I click on button "Add Friend"  
  
Scenario: UnFriend
  Given I have an account
  And I am signed in 
  Then I sign out
  Then I click on link "Sign up"
  When I fill in "user_name" with "Test Name 3"
  And I fill in "user_email" with "testemail3@test.com"
  And I fill in "user_password" with "testpassword"
  And I fill in "user_password_confirmation" with "testpassword"
  Then I press "Sign up"
  Then I should be signed in
  Then I should see "Welcome! You have signed up successfully."
  When I click on link "Friends"
  Then I should be on the Friends Page
  And I should see "testname"
  When I click on button "Add Friend"
  #Then I should see UnFriend  
  #When I click on button "unfollow"
  #Then I should see Add Friend
