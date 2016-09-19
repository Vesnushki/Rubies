Feature: As user I want to manage my cart before Checkout

  Background:
    Given I go to "product_page" with next parameters:
      |productUrl|test-product-1001|
      And I believe I am on "product_page"
    When I press "add_to_cart" in fieldset "product_info"
    Then I wait until I see "You added Test Product 1001 to your shopping cart."
      And I go to "shopping_cart"
  @1
  Scenario: Open PDP from shopping cart
    When I follow "product_name" in fieldset "products_in_cart" with following parameters:
      |productName|Test Product 1001|
    Then I should see "Add to Cart"
  @2
  Scenario: Go to Checkout link
    When I press "proceed_to_checkout" in fieldset "totals"
    Then I should see "Shipping Address"
  @3
  Scenario: Continue Shopping link
    And  I follow "continue_shopping" in fieldset "header"
    Then I should see "BRIXTON’S MEN"
  @4
  Scenario: Update product Qty
    When I select "3" from "product_qty" in fieldset "products_in_cart"
    And I press "update_shopping_cart" in fieldset "products_in_cart"
    And I go to "shopping_cart"
    Then I should see "$300"
  @5
  Scenario: Remove item from cart
    When I follow "remove_item" in fieldset "products_in_cart"
    And I go to "shopping_cart"
    Then I should not see "Test Product 1001"
    And I should see "You have no items in your shopping cart."



