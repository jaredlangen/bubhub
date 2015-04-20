Feature: Add a Rack   
    As an admin
    I want to ensure the information is displayed

Background: 
    Given I am on /add_a_rack

Scenario: Display the information
    Then I should see "Rack location:"
    Then I should see "Number of Bikes"
    Then I should see "Extra notes about the bike."
