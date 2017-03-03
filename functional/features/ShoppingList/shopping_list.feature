Feature: As a user I want to be able to do shopping list activity

  @1
  Scenario: Customer add product to shopping list from PDP
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
    Then I follow "add_to_wishlist" in fieldset "product_info"
    And I click on "//button[@id='mwishlist_popup_add']"
    Then I wait until I see "Product 'White Dress Adult Queen Gorgo Costume' has been added to wishlist 'Main'"


@2
  Scenario: Customer create new shopping list from PDP
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
   Then I follow "add_to_wishlist" in fieldset "product_info"
      And I wait for 5 seconds
      And I believe I am on "product_page"
   When I set "create_new_wishlist" in fieldset "select_a_wishlist"
  And I wait for 5 seconds
  And I fill in "enter_wishlist_name" with "123qa" in fieldset "//div[@class='mwishlist wborder']"
   When I click on "//button[@id='mwishlist_popup_add']"
   Then I should see "Product"

  @3
  Scenario: Customer create Shopping list from shopping list page
    Given I am on "customer_login"
    When I fill in the following into fieldset "log_in_customer":
      | email          |johnjosephson@yahoo.com|
      | password       |Password123|
    When I press "login" in fieldset "log_in_customer"
    Then I should see "My Dashboard"
    Then I go to "my_wishlist"
    And I believe I am on "my_wishlist"
    When I click on "//div[@class='wishlist-top']//a[@id='create-new-wishlist-popup-full']"

  @4
  Scenario: Customer delete Shopping list from shopping list page
    Given I am on "customer_login"
    When I fill in the following into fieldset "log_in_customer":
      | email          |johnjosephson@yahoo.com|
      | password       |Password123|
    When I press "login" in fieldset "log_in_customer"
    Then I should see "My Dashboard"
    Then I go to "my_wishlist"
    And I believe I am on "my_wishlist"
    When I click on "//button[@class='action remove']"

  @5
  Scenario: Customer delete Shopping list from shopping list page
    Given I am on "customer_login"
    When I fill in the following into fieldset "log_in_customer":
      | email          |johnjosephson@yahoo.com|
      | password       |Password123|
    When I press "login" in fieldset "log_in_customer"
    Then I should see "My Dashboard"
    Then I go to "my_wishlist"
    And I believe I am on "my_wishlist"
    And I wait for 10 seconds
    When I click on "//div[@class='wishlists']//button[@class='action import']"
    Then I wait until I see "Wish List Import"


