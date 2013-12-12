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
When /^(?:|I )click on link "([^"]*)"$/ do |link|
  click_link(link)
end

When /^(?:|I )click on button "([^"]*)"$/ do |button|
  click_button(button)
end

When(/^I click on 'Forgot your password'$/) do
	visit path_to('the Sign In page')
	click_link('Forgot your password?')
end

When(/^I sign out$/) do
	click_link('Sign out')
end

#Refactor
=begin
When /^I click on 'like'$/ do
  click_link("like")
end

When /^I click on 'unlike'$/ do
  click_link("unlike")
end

When /^I click on 'Add Friend'$/ do
  click_button("Add Friend")
end

When /^I click on 'UnFriend'$/ do
  click_button("UnFriend")
end
=end
#Then
Then (/^I press 'Send me reset password instructions'$/) do
  click_button('Send me reset password instructions')
end

Then /^I should be signed in$/ do
  page.should have_content "Sign out"
  page.should_not have_content "Sign up"
  page.should_not have_content "Sign In"
end

Then /^I should be signed out$/ do
  page.should have_content "Sign up"
  page.should have_content "Sign in"
  page.should_not have_content "Sign Out"
end

#Then /^(?:|I ) should see "([^"]*)"$/ do |message|
#  page.should have_content "message"
#end

=begin
Then /^I should see 1 like$/ do
  page.should have_content "1 likes"
end

Then /^I should see 0 likes$/ do
  page.should have_content "0 likes"
end


Then /^I should see UnFriend$/ do
  page.should have_content "UnFriend"
end

Then /^I should see Add Friend$/ do
  page.should have_content "Add Friend"
end
=end

