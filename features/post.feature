Feature: Posts
  In order to use Instarails
  I need to be able to make posts

  Scenario: unable to make posts when not signed in
    Given that I am on the homepage
    And that I am not signed in
    Then I should not be able to see "What's new?"

  Scenario: able to make posts when signed in
    Given that I am signed in
    And I am on the homepage
    When I click on "What's new?"
    Then I should be on the new post page

  #NB - this is commmented out because it's taking arounf 25s to run through the
  #s3 upload.

  #Scenario: making a post
    #Given that I am signed in
    #And that I have clicked on "What's new"
    #When I write "This is my test post" in the "Message" field
    #And I put add the path for a picture in the picture field
    #And I click on "Make post"
    #Then I should see "This is my test post"
    #And I should see the image "test_image.jpg"
    #And I should be on the homepage

  Scenario: time since post
    Given that "dave" has made a post with message "I'm still here!" two minutes ago
    When I am on the homepage
    Then I should see "Posted 2 minutes ago"

  Scenario: deleting a post
    Given that "dave" has made a post with message "Hello mum"
    When I click on "Delete"
    Then I should not see "Hello mum"
    And I should see "Post deleted!"

  Scenario: can't delete other people's posts
    Given that "dave" has made a post with message "You can't delete this!"
    But I am signed in as "bob"
    When I am on the homepage
    Then I should see "You can't delete this!"
    And I should see "bob"
    And I should not see "Delete"

  Scenario: shows who posted the post
    Given that "Conan" has made a post with message "What is best in life?"
    But I am signed in as "Krull"
    When I am on the homepage
    Then I should see "What is best in life?"
    And I should see "Posted by Conan"

  Scenario: editing a post
    Given that "Arnold" has made a post with message "Get to the chopper!"
    When I sign in as "Arnold"
    And I am on the homepage
    And I click on "Edit post"
    And I fill in the form with these details:
      | Message | "DO IT!"|
    And I click on "Make changes"
    Then I should be on the homepage
    And I should see "DO IT!"

