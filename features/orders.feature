@orders
Feature: Upload a bunch of orders with file upload

  Scenario: Add order by using the file upload
    Given I navigate to home page
    Given I should be signed in with "tester" and "tester"
    And I go to upload order page to upload the orders
