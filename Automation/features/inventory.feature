Feature: inventory
  Background:
    Given I open Odoo Login
    And I Loginto odoo

  Scenario: Updating inventory level for a specific product
    Given I am a warehouse manager
    And I am on the products page
    And I open a product
    And I update the inventory level for the product with a valid input
    When i click apply
    Then the inventory level should be updated

  Scenario:  Updating inventory level for a specific product with invalid input
    Given I am a warehouse manager
    And I am on the products page
    And I open a product
    And I update the inventory level for the product with a invalid input
    When i click apply
    Then there should be an error popup

  Scenario:  Updating inventory level for a specific product when clear is clicked
    Given I am a warehouse manager
    And I am on the products page
    And I open a product
    And I update the inventory level for the product with a invalid input
    When i click clear
    Then there should be an zero in field

  Scenario:  Updating inventory level for a specific product with negative input
    Given I am a warehouse manager
    And I am on the products page
    And I open a product
    And I update the inventory level for the product with a negative input
    When i click apply
    Then then the quantity will not be updated

  Scenario:  Updating inventory level for a specific product with float input
    Given I am a warehouse manager
    And I am on the products page
    And I open a product
    And I update the inventory level for the product with a float input
    When i click apply
    Then the quantity will be integer update