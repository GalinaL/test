
Feature: General

  Background:
    Given I navigate to home page
    Given I should be signed in with "tester" and "tester"

  @admin
  Scenario: Create a new company
    Then I type company name as "w_automation"
    Then I select Company Type Seller
    Then I type Street address as "2035 California drive"
    Then I type City "Mountain View"
    Then I select the company state California
    Then I type zip "94040"
    Then I type email address as "Galina@fortsystems.com"
    Then I click on radio button Same as Shipping
    Then I select a few package types
    Then I select upload format
    Then I select Default Fulfillment Group
    And I click on a creat button
    And I should see a new company name "w_automation" in the company list
    And I delete the company w_automation
#    Then I have to make sure that the company "w_automation" is not exist anymore

  Scenario: Create a new company
    And I create a new company "w_automation"

  Scenario: Create a new product
    And I create a new product "red_wine" for the company w_auto
    Then I delete the product red_wine

  Scenario: Error handling - delete the product with inventory

  Scenario: Delete product without inventory

  Scenario: Create a new physical kit
    And I create a physical kit "physical_kit" for the company w_auto
    Then I delete kit

  Scenario: Create a new hybrid kit
    And I create a physical kit "hybrid_kit" for the company w_auto
    Then I delete kit

  Scenario: Create a new virtual kit
    And I create a physical kit "virtual_kit" for the company w_auto
    Then I delete kit

  Scenario: Search for some specific product

  Scenario: Search for some specific kit

  Scenario: Create a new inventory location

  Scenario: Search for some specific inventory location

  Scenario: Create a new power client user

  Scenario: Create a new client user

  Scenario: Create a new Warehouse Location

  Scenario: Search for some specific Warehouse Location







#  it was for question
#
#  Scenario: Login with valid credential
#    Given I navigate



