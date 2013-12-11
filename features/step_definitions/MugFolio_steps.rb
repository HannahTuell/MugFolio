#Given
Given(/^I have an account$/) do
	visit path_to('the Sign Up page')
        find_by_id(:user_name).set('testname')
	find_by_id(:user_email).set('testemail@test.com')
	find_by_id(:user_password).set('testpassword')
	find_by_id(:user_password_confirmation).set('testpassword')
	click_button('Sign up')
	click_link('Sign out')
end

Given(/^I am signed in$/) do
	visit path_to('the Sign In page')
	find_by_id(:user_email).set('testemail@test.com')
	find_by_id(:user_password).set('testpassword')
	click_button('Sign in')
end

#When
When /^I click button "Sign in"$/ do
  click_button('Sign in')
end

When(/^I sign out$/) do
	click_link('Sign out')
end

When(/^I click on 'Profile'$/) do
	click_link('Profile')
end

When(/^I click on 'Forgot your password'$/) do
	visit path_to('the Sign In page')
	click_link('Forgot your password?')
end

When /^I click 'Sign up'$/ do
  click_link("Sign up")
end

When /^I click on 'Create Post'$/ do
  click_button("Create Post")
end

When /^I click on 'like'$/ do
  click_link("like")
end

When /^I click on 'unlike'$/ do
  click_link("unlike")
end

When /^I click on 'Create Comment'$/ do
  click_button("Create Comment")
end

When /^I click on 'Friends'$/ do
  click_link("Friends")
end

When /^I click on 'Add Friend'$/ do
  click_button("Add Friend")
end

When /^I click on 'UnFriend'$/ do
  click_button("UnFriend")
end

#Then
Then (/^I press 'Send me reset password instructions'$/) do
  click_button('Send me reset password instructions')
end

Then /^I see a successful sign in message$/ do
  page.should have_content "Signed in successfully."
end

Then /^I should be signed in$/ do
  page.should have_content "Sign out"
  page.should_not have_content "Sign up"
  page.should_not have_content "Sign In"
end

Then /^I should see a password too short error message$/ do
  page.should have_content "Password is too short (minimum is 6 characters)"
end

Then /^I should see a successful sign up message$/ do
  page.should have_content "Welcome! You have signed up successfully."
end

Then /^I should be signed out$/ do
  page.should have_content "Sign up"
  page.should have_content "Sign in"
  page.should_not have_content "Sign Out"
end

Then /^I should see successfull post created message$/ do
  page.should have_content "Post was successfully created"
end

Then /^I should see 1 like$/ do
  page.should have_content "1 likes"
end

Then /^I should see 0 likes$/ do
  page.should have_content "0 likes"
end

Then /^I should see 1 comment$/ do
  page.should have_content "1 comment"
end

Then /^I should see testname$/ do
  page.should have_content "testname"
end

Then /^I should see UnFriend$/ do
  page.should have_content "UnFriend"
end

Then /^I should see Add Friend$/ do
  page.should have_content "Add Friend"
end

