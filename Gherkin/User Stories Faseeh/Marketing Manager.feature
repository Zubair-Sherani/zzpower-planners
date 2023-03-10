Feature:  Marketing Manager

Scenario 1: Creating an email campaign with valid email addresses and expected open rates
Given I am a marketing manager
And I am logged into the Odoo system
When I create an email campaign with valid email addresses
And the open rates fall within the expected range
Then the email campaign should be created successfully
And the recipients should receive the email
And the open rates should be recorded accurately

Scenario 2: Creating an email campaign with invalid email addresses
Given I am a marketing manager
And I am logged into the Odoo system
When I create an email campaign with invalid email addresses
Then the email campaign should not be created
And an error message should be displayed indicating the invalid email addresses

Scenario 3: Creating an email campaign with a very small number of recipients
Given I am a marketing manager
And I am logged into the Odoo system
When I create an email campaign with a very small number of recipients
Then the email campaign should be created successfully
And the recipients should receive the email
And the open rates should be recorded accurately

Scenario 4: Creating an email campaign with a very large number of recipients
Given I am a marketing manager
And I am logged into the Odoo system
When I create an email campaign with a very large number of recipients
Then the email campaign should be created successfully
And the recipients should receive the email
And the open rates should be recorded accurately
And the system should not experience any performance issues or crashes

