Feature: As a user I want to be able to add products to cart

  @1
  Scenario: Add product configurable with qty = 1 to cart
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
    |product_quantity|5|
    When I press "add_to_cart" in fieldset "product_info"
      And I wait for 10 seconds
    Then I should see "You added White Dress Adult Queen Gorgo Costume to your shopping cart."




  @2
  Scenario: Add product configurable with qty = 0 to cart
    Given I am on "customer_login"
    When I fill in the following into fieldset "log_in_customer":
      | email          |johnjosephson@yahoo.com|
      | password       |Password123|
    When I press "login" in fieldset "log_in_customer"
    Then I should see "My Dashboard"
    Given I go to "product_page" with next parameters:
      |productUrl|white-dress-adult-queen-gorgo-costume|
    And I believe I am on "product_page"
    When I press "add_to_cart" in fieldset "product_info"
    And I wait for 10 seconds
    Then I should see "Please select at least one product."


  @3
  Scenario: Add  simple product with q-ty = 5
    Given I am on "customer_login"
    When I fill in the following into fieldset "log_in_customer":
      | email          |johnjosephson@yahoo.com|
      | password       |Password123|
    When I press "login" in fieldset "log_in_customer"
    Then I should see "My Dashboard"
    Given I go to "product_page" with next parameters:
      |productUrl|kids-darth-vader-molded-costume|
    And I believe I am on "product_page"
    Then I fill in the following into fieldset "product_info":
      |product_quantity_simple|5|
    When I press "add_to_cart" in fieldset "product_info"
    And I wait for 10 seconds
    Then I should see "You added Kids Darth Vader Molded Costume to your shopping cart."



  @4
  Scenario: Add product from PLP to cart
    Given I go to "product_page" with next parameters:
      |productUrl|trending-now|
    And I believe I am on "product_page"
    When I hover over the element "//img[@alt='Test Costume']"
    And I wait for 10 seconds






