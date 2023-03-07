Feature: Signup

  Scenario: Successful signup with all required fields
    Given I am on the signup page
    When I enter valid information in all required fields
    And I click the signup button
    Then I should be redirected to the home page
    And I should see a welcome message

  Scenario: Unsuccessful signup - missing required fields
    Given I am on the signup page
    When I enter incomplete information
    And I click the signup button
    Then I should see an error message for the missing fields

  Scenario: Unsuccessful signup - invalid email address
    Given I am on the signup page
    When I enter an invalid email address
    And I click the signup button
    Then I should see an error message for the email field

  Scenario: Unsuccessful signup - password requirements not met
    Given I am on the signup page
    When I enter a password that doesn't meet the requirements
    And I click the signup button
    Then I should see an error message for the password field

  Scenario: Unsuccessful signup - password confirmation doesn't match
    Given I am on the signup page
    When I enter a password and confirmation that don't match
    And I click the signup button
    Then I should see an error message for the confirmation field

  Scenario: Unsuccessful signup - email already taken
    Given I am on the signup page
    When I enter an email address that's already taken
    And I click the signup button
    Then I should see an error message for the email field

  Scenario: Successful signup with optional fields
    Given I am on the signup page
    When I enter valid information in all required fields
    And I enter valid information in the optional fields
    And I click the signup button
    Then I should be redirected to the home page
    And I should see a welcome message
