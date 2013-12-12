Feature: navigation

Scenario: view profile 
  Given I have an account
  And I am signed in
  When I click on link "Profile"
  Then I am on the Profile View
