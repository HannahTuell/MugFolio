Feature:Post

Scenario: Write post
  Given I have an account
  And I am signed in 
  When I fill in "post_content" with "Test post"
  And I click on 'Create Post'
  Then I should see successfull post created message

Scenario: Comment on post
  Given I have an account
  And I am signed in 
  When I fill in "post_content" with "Test post"
  And I click on 'Create Post'
  Then I should see successfull post created message
  When I fill in "comment_content" with "Test comment"
  And I click on 'Create Comment' 
  Then I should see 1 comment
