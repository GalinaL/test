@admin
Feature: General

  Scenario: Login with valid credentials
    Given I navigate to home page
    Given I should be signed in with "tester" and "tester"
    Then I type company name as "w_automation"
    Then I select Company Type Seller
    Then I type Street address as "2035 California drive"
    Then I type City "Mountain View"
    Then I select the company state California
    Then I type zip "94040"
    Then I type email adress as "Galina@fortsystems.com"
    Then I click on radio button Same as Shipping
    Then I select a few package types
    Then I select upload format 209
    Then I select Default Fulfillment Group
    And I click on a creat button
    And I should see a new company


