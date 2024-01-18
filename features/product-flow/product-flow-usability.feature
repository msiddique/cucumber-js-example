@product-flow
Feature: Product Flow Behavior

  Scenario: User should not experience scrolling issues during a product flow
    Given the user is on the product page
    When the user goes through the product flow
    Then the user should not experience any scrolling issues

  Scenario: Background color should revert when de-selecting an option in a product flow question
    Given the user is on the product page
    And the user selects "Get Started" button
    Then the user is on the product flow question with radio button options
    And the user selects a product flow option
    When the user de-selects an option
    Then the background color of the radio button should revert to the de-selected state
    And the user can proceed to the next question

  Scenario: User skips adding an add-on to the cart by clicking "Next"
    Given the user is on the product flow with add-on questions
    And the user is on an add-on question
    When the user clicks "Next"
    Then the user should proceed to the next question without adding the add-on to the cart

  Scenario: User cannot skip a consent question
    Given the user is on the product flow with consent questions
    When the user encounters a required add-on question and decides not to add it
    And the user clicks "Next" without providing a required response
    Then the user should be prompted to answer the required question
    And the user cannot proceed until the required question is answered
