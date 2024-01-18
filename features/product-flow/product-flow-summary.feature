@product-flow
Feature: Remove Items from Product Flow Summary Page

  Scenario: User removes items from the product summary page before adding to the cart
    Given the user has selected items in the product flow
    When the user navigates to the product summary page
    And the user decides to remove an item from the summary
    Then the removed item should no longer appear in the summary
    And the user should not have to redo the entire flow to remove unwanted items

  Scenario: User removes all items from the product summary page
    Given the user has selected multiple items in the product flow
    When the user navigates to the product summary page
    And the user decides to remove all items from the summary
    Then the summary should be empty
    And the user can start fresh without any items in the cart
