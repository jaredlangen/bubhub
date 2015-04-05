Feature: 
  As a user
  So that I can store my preferences
  I want to create a user profile

Background:
  Given I am on /users/new

Scenario: User accepts terms and conditions but does not fill in identifying information
  When I check "I Accept"
  When I press "Register"
  Then I should see "All fields are required. Please make sure to complete all fields."
