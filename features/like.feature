Feature: like

Scenario: Like post
  Given I have an account
  And I am signed in 
  When I fill in "post_content" with "Test post"
  And I click on 'Create Post'
  Then I should see successfull post created message
  #When I follow "like"
  #Then I should see 1 like

Scenario: UnLike post
  Given I have an account
  And I am signed in 
  When I fill in "post_content" with "Test post"
  And I click on 'Create Post'
  Then I should see successfull post created message
  #When I click on "like"
  #Then I should see 1 like
  #When I click on "unlike"
  #Then I should see 0 likes
