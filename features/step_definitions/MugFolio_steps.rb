When(/^I sign out$/) do
	click_link('Sign Out')
end

When(/^I click on 'View Profile'$/) do
	click_link('View Profile')
end

Given(/^I have an account$/) do
	visit path_to('the Sign Up page')
	find_by_id(:user_email).set('testemail@test.com')
	find_by_id(:user_password).set('testpassword')
	find_by_id(:user_password_confirmation).set('testpassword')
	click_button('Sign up')
	click_link('Sign Out')
end

Given(/^I am signed in$/) do
	visit path_to('the Sign In page')
	find_by_id(:user_email).set('testemail@test.com')
	find_by_id(:user_password).set('testpassword')
	click_button('Sign in')
end

When /^I click "Sign up"$/ do
  click_link("Sign up")
end

Then /^I see a successful sign in message$/ do
  page.should have_content "Signed in successfully."
end

Then /^I should be signed in$/ do
  page.should have_content "Sign Out"
  page.should_not have_content "Sign Up"
  page.should_not have_content "Sign In"
end

When /^I click button "Sign in"$/ do
  click_button('Sign in')
end

Then /^I should see a password too short error message$/ do
  page.should have_content "Password is too short (minimum is 8 characters)"
end

Then /^I should be signed out$/ do
  page.should have_content "Sign up"
  page.should have_content "Sign in"
  page.should_not have_content "Sign Out"
end

Then /^I should see a successful sign up message$/ do
  page.should have_content "Welcome! You have signed up successfully."
end

