Feature: Liking posts
  In order to show how much I like a post
  As a user of Instarails
  I need to be able to like a post

  Scenario: liking a post
    Given that "Harry" has made a post with message "Do you feel lucky?"
    But I am signed in as "Scorpio"
    When I am on the homepage
    And I click on "Like"
    Then I should see "Likes: 1"

