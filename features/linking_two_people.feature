Feature: Linking two people
  In order to show that I have worked with someone
  As a user
  I want to connect with people that I've worked with

  Scenario: Adding a comment for a link
    Given a user "coreyhaines@gmail.com"
    And a user "chrismdp@gmail.com"
    And I am on the links page for "coreyhaines@gmail.com"
    When I say I worked with someone
      | email | comment |
      | chrismdp@gmail.com | This was awesome |
    Then I should be on the links page for "coreyhaines@gmail.com"
    Then I should see I worked with
      | email | comment |
      | chrismdp@gmail.com | This was awesome |
