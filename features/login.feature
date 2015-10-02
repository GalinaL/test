@login
Feature: Login functionality

  Scenario: Login with valid credentials
    Given I navigate to home page
    And I type "tester" as a login
    And I type "tester" as a password
    Then I click on Signin button
    And I should be signed-in as a user "Demo User (FORT Warehouse Demo)"

  Scenario: Login with valid credentials(using nested step)
    Given I navigate to home page
    Given I should be signed in with "tester" and "tester"

