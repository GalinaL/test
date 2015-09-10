@product_search
Feature: Login functionality

  Scenario: Search for Moraga Inc products
    Given I navigate to home page
    Given I should be signed in with "rbt" and "lishan*"
    Then I select "Product Search" from products drop down list
    And I should see the page title "Product Search"
    Then I select all Moraga products
