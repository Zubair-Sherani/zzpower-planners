Feature: Login

Login to the website

Background: There is User in the system


@Cred
Scenario Outline: Checking Credentials
When I have entered <username> in the login form
And I have entered <password> in the login form
And I press login button
Then the result should be <Result> on the screen

# suppose right credentials are 
# username: faseeh
# password: 123456

Examples:
  | username | password | Result    |
  | faseeh   | 123456   | Logged in |
  | faseeh   | 1254     | Wrong cred|
  | faas     | 123456   | wrong cred|
  | faasse   | 12312s   | wrong cred|