Feature: As a user I want to be able to add products to cart

  @1
  Scenario: Add product configurable with qty = 1 to cart
    Given I go to "product_page" with next parameters:
      |productUrl|jethro-hat|
      And I believe I am on "product_page"
      And I select any color and size
    When I press "add_to_cart" in fieldset "product_info"
    Then I should see "You added Jethro Hat to your shopping cart."


  @2
  Scenario: Add simple product with qty = 1 to cart
    Given I go to "product_page" with next parameters:
      | productUrl |test-product-1001|
      And I believe I am on "product_page"
    When I press "add_to_cart" in fieldset "product_info"
    Then I should see "You added Test Product 1001 to your shopping cart."



  @3
  Scenario: Add simple product with qty = 999 to cart
    Given I go to "product_page" with next parameters:
      | productUrl |test-product-1001|
    And I believe I am on "product_page"
    And I fill in the following into fieldset "product_info":
      | product_qty| 999 |
    When I press "add_to_cart" in fieldset "product_info"
    Then I should see "The most you may purchase is 5."






