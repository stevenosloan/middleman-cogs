Feature: Basic Usage

  What are snails even trying to do?

  Scenario: Doing some thangs
    Given a fixture app "base-app"
    And a file named "config.rb" with:
      """
      activate :cogs
      """
    And a file named "source/javascripts/main.js" with:
      """
      //= require 'javascripts/lib/log'
      """
    And a file named "source/javascripts/lib/_log.js" with:
      """
      console.log('hej hej');
      """
    And the Server is running

    When I go to "/javascripts/main.js"
    Then I should see "console.log('hej hej');"
