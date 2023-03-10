Feature: Customer Service Representative

Scenario 1: View Open Support Tickets
Given that I am logged into Odoo as a customer service representative
When I navigate to the Support Ticket section
Then I should see a list of all open support tickets

Scenario 2: Resolve a High-Priority Ticket
Given that I am logged into Odoo as a customer service representative
And I am viewing a high-priority support ticket
When I resolve the ticket
Then the ticket should be closed and the customer should be notified of the resolution

Scenario 3: Escalate a Low-Priority Ticket
Given that I am logged into Odoo as a customer service representative
And I am viewing a low-priority support ticket
When I escalate the ticket to a higher level of support
Then the ticket priority should be updated and the appropriate support team should be notified

Scenario 4: Respond to a Ticket with Limited Information
Given that I am logged into Odoo as a customer service representative
And I am viewing a support ticket with limited information about the issue
When I request additional information from the customer
Then the customer should be notified and the ticket should be updated with the new information