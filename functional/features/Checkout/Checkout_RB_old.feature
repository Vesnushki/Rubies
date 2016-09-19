Feature: As a user I want to be able to checkout products


  Background:
    Given I go to "product_page" with next parameters:
      |productUrl|jethro-hat|
      And I believe I am on "product_page"
      And I select any color and size
      And I wait for 8 seconds
      When I press "add_to_cart" in fieldset "product_info"
      And I wait for 5 seconds
      Then I should see "You added Jethro Hat to your shopping cart."

  @checkout
  Scenario: Guest user checkout without registration and Check Money/order payment method  and discount code
    When I go to "checkout"
    And I believe I am on "checkout"
    And I fill in the following into fieldset "shipping_information":
    |shipping_email           |%rand%_guest@guidance.com|
    And I wait for AJAX
    And I fill in the following into fieldset "shipping_information":
    |shipping_first_name      |Test|
    |shipping_last_name       |Test|
    |shipping_company         |Google|
    |shipping_street_address_1|4134 Del Rey Avenue|
    |shipping_city            |Marina Del Rey     |
    |shipping_zip_code        |90292              |
    |shipping_telephone       |310 754 4000       |
    When I select "United States" from "shipping_country" in fieldset "shipping_information"
    And I select "California" from "shipping_state" in fieldset "shipping_information"
    And I set "radio_button" in fieldset "shipping_method"
    And I press "shipping_next_button" in fieldset "shipping_method"
    And I believe I am on "checkout_payment"
    And I set "check_payment" in fieldset "payment_method" with following parameters:
    | paymentID | checkmo |
    Then I click on "//span[@id='block-discount-heading']"
    And I fill in the following into fieldset "payment_method":
    |discount_code|MA1022|
    And I press "place_order" button in fildset "payment_method"
    Then I should see "Thank you for your order!"


@checkout
  Scenario: Checkout with login and Check Money/order payment method and 
    When I go to "checkout"
    And I believe I am on "checkout"
    And I fill in the following into fieldset "shipping_information":
    |shipping_email           |%rand%_guest@guidance.com|
    And I wait for AJAX
    And I fill in the following into fieldset "shipping_information":
    |shipping_first_name      |Test|
    |shipping_last_name       |Test|
    |shipping_company         |Google|
    |shipping_street_address_1|4134 Del Rey Avenue|
    |shipping_city            |Marina Del Rey     |
    |shipping_zip_code        |90292              |
    |shipping_telephone       |310 754 4000       |
    When I select "United States" from "shipping_country" in fieldset "shipping_information"
    And I select "California" from "shipping_state" in fieldset "shipping_information"
    And I set "radio_button" in fieldset "shipping_method"
    And I press "shipping_next_button" in fieldset "shipping_method"
    And I believe I am on "checkout_payment"
    And I set "check_payment" in fieldset "payment_method" with following parameters:
    | paymentID | checkmo |
    Then I click on "//span[@id='block-discount-heading']"
    And I fill in the following into fieldset "payment_method":
    |discount_code|MA1022|
    And I press "place_order" button in fildset "payment_method"
    Then I should see "Thank you for your order!"


  

# @clearCookiesAfterScenario
 # Scenario: User checkout with login and CC payment
  #  When I go to "checkout"
   # And I believe I am on "checkout"
   # And I fill in the following into fieldset "shipping_information":
   # |shipping_email           |kkatekoss@gmail.com|
   # And I press "checkout_login" button in fildset "shipping_information"
   