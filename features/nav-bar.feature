@smoke-test
Feature: Navbar

  @automated @desktop
  Scenario: Navbar on Desktop
    Given I am on the homepage
    Then the navbar should be displayed
    And the navbar should include links for "WispLogo, Shop, Learn, Symptoms, Quiz, About, Blog, Login, Cart"

  @manual @mobile
  Scenario: Navbar on Mobile
    Given I am on the homepage
    And the navbar should be displayed
    Then the navbar should display "HamburgerMenu, WispLogo, Cart"
    When I click the HamburgerMenu
    Then I should see links for "Shop, Learn, Symptoms Quiz, About, Blog, Login"
