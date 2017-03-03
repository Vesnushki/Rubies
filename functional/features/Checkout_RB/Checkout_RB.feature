Feature: As a user I want to be able to checkout products

  @1
  Scenario: Customer checkout with Check Money/order payment method
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
    Then I should see "You added White Dress Adult Queen Gorgo Costume to your shopping cart."
    Given I am on "checkout"
       And I believe I am on "checkout"
       And I wait for AJAX
     Then I wait until I see "Shipping methods"
       And I select "Cheapest/Best Way" from "shipping_method" in fieldset "shipping_methods"
     Then I click on "//div[@id='shipping-method-buttons-container']//button"
       And I wait for AJAX
       And I believe I am on "checkout_payment"
    And I wait for 10 seconds
     Then I set "check_payment" in fieldset "payment_method" with following parameters:
    | paymentID | checkmo |
     Then I click on "//div[@class='payment-method _active']//button[span='Place Order']"
     Then I wait until I see "We'll email you an order confirmation with details and tracking info."

  @2
  Scenario: Customer checkout with Check Money/order payment method
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
    Then I should see "You added White Dress Adult Queen Gorgo Costume to your shopping cart."
    Given I am on "checkout"
    And I believe I am on "checkout"
    And I wait for AJAX
    Then I wait until I see "Shipping methods"
    And I select "Cheapest/Best Way" from "shipping_method" in fieldset "shipping_methods"
    Then I click on "//div[@id='shipping-method-buttons-container']//button"
    And I wait for AJAX
    And I believe I am on "checkout_payment"
    And I wait for 10 seconds
    Then I set "check_payment" in fieldset "payment_method" with following parameters:
      | paymentID | terms |
    And I wait for 5 seconds
       And I fill in the following into fieldset "payment_method":
      |purchase_order_number|1234|
      |cancellation_date|09/15/2022|
    Then I click on "//div[@class='payment-method _active']//button[span='Place Order']"
    Then I wait until I see "We'll email you an order confirmation with details and tracking info."

#      And I wait for AJAX
#      And I fill in the following into fieldset "shipping_information":
#    |shipping_first_name      |Test|
#    |shipping_last_name       |Test|
#    |shipping_company         |Google|
#    |shipping_street_address_1|4134 Del Rey Avenue|
#    |shipping_city            |Marina Del Rey     |
#    |shipping_zip_code        |90292              |
#    |shipping_telephone       |310 754 4000       |
#    When I select "United States" from "shipping_country" in fieldset "shipping_information"
#      And I wait for AJAX
#      And I select "California" from "shipping_state" in fieldset "shipping_information"
#      #And I set "radio_button" in fieldset "shipping_method"
#      And I wait for AJAX
#      And I press "shipping_next_button" in fieldset "shipping_method"
#      And I wait for AJAX
#      And I believe I am on "checkout_payment"
#    Then I wait until I see "Apply Promo Code"
#      And I set "check_payment" in fieldset "payment_method" with following parameters:
#    | paymentID | checkmo |
#      And I wait for AJAX
#      Then I click on "//div[@class='payment-method _active']//button[span='Place Order']"
#      #And I press "place_order" in fieldset "payment_method"
#      And I wait for AJAX
#    Then I should see "Thank you for your order!"
#      And I believe I am on "order_confirmation"
#      And I fill in the following into fieldset "create_account":
#    | password  |KKate123|
#    |confirm_password|KKate123|
#      And I click on "//button[@class='action-secondary']"
#      And I wait for 10 seconds
#      Then I should see "A letter with further instructions will be sent to your email."




























