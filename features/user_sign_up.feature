Feature: Sign up
  In order to use Instarails
  I need to log in to the service

  Scenario: signing up normally
    Given that I am on the Instarails sign up page
    When I sign up normally as "gypsydave5" from "dave@gypsydave5.com"
    Then I should see "gypsydave5"
    And I should be on the homepage

  Scenario: signing up with Facebook
    Given that I am on the Instarails sign up page
    When I sign up using Facebook
    Then I should see "Facebook"

