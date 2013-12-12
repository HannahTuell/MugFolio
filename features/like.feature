Feature: like

Scenario: Like post
  Given I have an account
  And I am signed in 
  When I fill in "post_content" with "Test post"
  And I click on button "Create Post"
  Then I should see "Post was successfully created"
  When I click on link "like"
  Then I should see "1 like"

Scenario: UnLike post
  Given I have an account
  And I am signed in 
  When I fill in "post_content" with "Test post"
  And I click on button "Create Post"
  Then I should see "Post was successfully created"
  When I click on link "like"
  Then I should see "1 like"
  #When I click on link "Unlike"
  #Then I should see "0 likes"
