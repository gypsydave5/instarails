Feature: Sign up
  In order to use Instarails
  I need to log in to the service

  Scenario: signing up normally
    Given that I am on the sign up page
    When I fill in the form with these details:
      | Email                 | dave@dave.com |
      | Username              | gypsydave5    |
      | Password              | 12345678      |
      | Password confirmation | 12345678      |
    And I click on "Join Instarails"
    Then I should see "gypsydave5"
    And I should see "Sign out"
    And I should be on the homepage

  Scenario: signing out
    Given that I am signed in
    When I click on "Sign out"
    Then I should see "Sign up"
    And I should see "Log in"

  Scenario: sigining in
    Given that "bob" has an account
    And that I am on the sign in page
    When I fill in the form with these details:
      | Email    | bob@bob.com |
      | Password | 12345678    |
    And I click on "Log in to Instarails"
    Then I should see "bob"
    And I should be on the homepage

  Scenario: signing in with invalid credentials
    Given that "rupert" has an account
    And that I am on the sign in page
    When I fill in the form with these details:
      | Email    | bob@bob.com   |
      | Password | wrongpassword |
    And I click on "Log in to Instarails"
    Then I should see "Invalid email address or password"

  @facebook
  Scenario: signing in with Facebook
    Given that I am on the sign up page
    When I click on "Sign in with Facebook"
    Then I should see "FacebookDrone"

  @bad_facebook
  Scenario: signing in with bad Facebook credentials
    Given that I am on the sign up page
    When I click on "Sign in with Facebook"
    Then I should see "Could not authenticate you from Facebook"

