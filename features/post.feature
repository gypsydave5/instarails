Feature: Posts
  In order to use Instarails
  I need to be able to make posts

  Scenario: unable to make posts when not signed in
    Given that I am on the homepage
    And that I am not signed in
    Then I should not be able to see "What's new?"

  Scenario: able to make posts when signed in
    Given that I am signed in
    When I click on "What's new?"
    Then I should be on the new post page

  Scenario: making a post
    Given that I am signed in
    And that I have clicked on "What's new"
    When I write "This is my test post" in the "Message" field
    And I put add the path for a picture in the picture field
    And I click on "Make post"
    Then I should see "This is my test post"
    And I should see the image "test_image.jpg"
    And I should be on the homepage
