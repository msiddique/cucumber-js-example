Feature: Product bundles

@new
Scenario Outline: Purchasing a bundle
    Given I am on the "<bundle>" product page
    When I select "Add to Cart"
    And I select "Remove"
    Then I am taken to the "Cart" page
    And the following items are in my cart "<items>"
    And the total price of the cart is <price>

 Examples: 
      | bundle             | items                                                                 | price |
      | omg-bundle         | Norethindrone 5mg, Zofran (Ondansetron 8mg) - 30ct, Harmonizing Lube  | 67.00 | 
      | delay-vacay-bundle | OMg Cream, Balancing wash                                             | 30.00 |
      | playtime-bundle    | Dame Pom Flexible Vibrator, Toy-Safe Harmonizing Lube                 | 30.00 |

