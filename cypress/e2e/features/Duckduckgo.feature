@duckduckgo
Feature: Search engine on the Duckduckgo website

  Background:
    Given I go to the Duckduckgo page
    And I see "DuckDuckGo" in the title

  Scenario Outline: Using the search input with the text "<search_text>"
    Given I fill the search input with the "<search_text>" term on the Search Engine page
    When I click on the search button on the Search Engine page
    Then the text "<expected_text>" should be visible on the result page on the Search Engine page

    Examples:
      | search_text | expected_text |
      | cypress     | cypress.io    |
      | javascript  | JavaScript    |
