Feature: Home page
  In order to use Instarails
  As someone who wants to use Instarails
  I should be presented with a homepage

  Scenario: arriving on the homepage
    Given that I am on the homepage
    Then I should see "Instarails"
    And I should see "Log in"
    And I should see "Sign up"

  Scenario: navigating to "Sign up"
    Given that I am on the homepage
    When I click on "Sign up"
    Then I should be on the sign up page
      And I should see "Sign up to Instarails"

  Scenario: navigating to "Log in"
    Given that I am on the homepage
    When I click on "Log in"
    Then I should be on the log in page
      And I should see "Log in to Instarails"

