Feature: Linking two people
  In order to show that I have worked with someone
  As a user
  I want to connect with people that I've worked with

  Scenario: Basic linking of names
    Given a user "coreyhaines@gmail.com"
    And a user "chrismdp@gmail.com"
    And I am on the links page for "coreyhaines@gmail.com"
    When I make a link to "chrismdp@gmail.com"
    Then I should be on the links page for "coreyhaines@gmail.com"
    Then I should see a connection to "chrismdp@gmail.com"
