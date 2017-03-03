Feature: As user I want to manage my cart before Checkout

  @1
  Scenario: Open PDP from shopping cart
    Given I am on "customer_login"
    When I fill in the following into fieldset "log_in_customer":
      | email          |johnjosephson@yahoo.com|
      | password       |Password123|
    When I press "login" in fieldset "log_in_customer"
    Then I should see "My Dashboard"
    Given I go to "product_page" with next parameters:
      |productUrl|white-dress-adult-queen-gorgo-costume|
    And I believe I am on "product_page"
    Then I fill in the following into fieldset "product_info":
      |product_quantity|1|
    When I press "add_to_cart" in fieldset "product_info"
    And I wait for 10 seconds
    And I go to "shopping_cart"
    When I follow "product_name" in fieldset "products_in_cart" with following parameters:
      |productName|White Dress Adult Queen Gorgo Costume|
    Then I should see "Add to Cart"


  @2
  Scenario: Go to Checkout link
    Given I am on "customer_login"
    When I fill in the following into fieldset "log_in_customer":
      | email          |johnjosephson@yahoo.com|
      | password       |Password123|
    When I press "login" in fieldset "log_in_customer"
    Then I should see "My Dashboard"
    Given I go to "product_page" with next parameters:
      |productUrl|white-dress-adult-queen-gorgo-costume|
    And I believe I am on "product_page"
    Then I fill in the following into fieldset "product_info":
      |product_quantity|1|
    When I press "add_to_cart" in fieldset "product_info"
    And I wait for 10 seconds
    And I go to "shopping_cart"
    When I press "proceed_to_checkout" in fieldset "totals"
    And I wait for 10 seconds
    Then I should see "Shipping Address"


  @3
  Scenario: Go to Continue Shopping link
    Given I am on "customer_login"
    When I fill in the following into fieldset "log_in_customer":
      | email          |johnjosephson@yahoo.com|
      | password       |Password123|
    When I press "login" in fieldset "log_in_customer"
    Then I should see "My Dashboard"
    Given I go to "product_page" with next parameters:
      |productUrl|white-dress-adult-queen-gorgo-costume|
    And I believe I am on "product_page"
    Then I fill in the following into fieldset "product_info":
      |product_quantity|1|
    When I press "add_to_cart" in fieldset "product_info"
    And I wait for 10 seconds
    And I go to "shopping_cart"
    And  I follow "continue_shopping" in fieldset "products_in_cart"
    Then I should see "Popular Categories"


  @4
  Scenario: Update product Qty
    Given I am on "customer_login"
    When I fill in the following into fieldset "log_in_customer":
      | email          |johnjosephson@yahoo.com|
      | password       |Password123|
    When I press "login" in fieldset "log_in_customer"
    Then I should see "My Dashboard"
    Given I go to "product_page" with next parameters:
      |productUrl|white-dress-adult-queen-gorgo-costume|
    And I believe I am on "product_page"
    Then I fill in the following into fieldset "product_info":
      |product_quantity|1|
    When I press "add_to_cart" in fieldset "product_info"
    And I wait for 10 seconds
    And I go to "shopping_cart"
#    When I select "3" from "product_qty" in fieldset "products_in_cart"
    Then I fill in the following into fieldset "products_in_cart":
      |product_qty|3|
    And I press "update_shopping_cart" in fieldset "products_in_cart"
    And I go to "shopping_cart"
    Then I should see "$67.50"


  @5
  Scenario: Remove item from cart
    Given I am on "customer_login"
    When I fill in the following into fieldset "log_in_customer":
      | email          |johnjosephson@yahoo.com|
      | password       |Password123|
    When I press "login" in fieldset "log_in_customer"
    Then I should see "My Dashboard"
    Given I go to "product_page" with next parameters:
      |productUrl|white-dress-adult-queen-gorgo-costume|
    And I believe I am on "product_page"
    Then I fill in the following into fieldset "product_info":
      |product_quantity|1|
    When I press "add_to_cart" in fieldset "product_info"
    And I wait for 10 seconds
    And I go to "shopping_cart"
    When I follow "remove_item" in fieldset "products_in_cart"
    And I wait for 10 seconds
    And I go to "shopping_cart"
    Then I should not see "White Dress Adult Queen Gorgo Costume"
    And I should see "You have no items in your shopping cart."


  @6
  Scenario: Save for later item from cart
    Given I am on "customer_login"
    When I fill in the following into fieldset "log_in_customer":
      | email          |johnjosephson@yahoo.com|
      | password       |Password123|
    When I press "login" in fieldset "log_in_customer"
    Then I should see "My Dashboard"
    Given I go to "product_page" with next parameters:
      |productUrl|white-dress-adult-queen-gorgo-costume|
    And I believe I am on "product_page"
    Then I fill in the following into fieldset "product_info":
      |product_quantity|1|
    When I press "add_to_cart" in fieldset "product_info"
    And I wait for 10 seconds
    And I go to "shopping_cart"
    When I follow "save_for_later" in fieldset "products_in_cart"
    Then I click on "//button[@id='mwishlist_popup_add']"
    And I go to "shopping_cart"
    And I should see "White Dress Adult Queen Gorgo Costume has been moved to your wish list."






