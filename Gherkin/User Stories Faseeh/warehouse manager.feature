Feature: warehouse manager

Scenario 1: Updating inventory level for a specific product
Given I am a warehouse manager
And I am on the product page
When I update the inventory level for the product with a valid input
Then the inventory level should be updated
And a confirmation message should be displayed

Scenario 2: Updating inventory level for a specific product with invalid input
Given I am a warehouse manager
And I am on the product page
When I update the inventory level for the product with an invalid input
Then the inventory level should not be updated
And an error message should be displayed

Scenario 3: Checking inventory level for a specific product
Given I am a warehouse manager
And I am on the product page
When I check the inventory level for the product
Then the current inventory level should be displayed

Scenario 4: Checking inventory level for a specific product at minimum and maximum boundary values
Given I am a warehouse manager
And I am on the product page
When I check the inventory level for the product at minimum and maximum boundary values
Then the current inventory level should be displayed correctly
And there should be no error messages or unexpected behavior.