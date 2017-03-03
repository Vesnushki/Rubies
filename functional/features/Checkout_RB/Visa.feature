Feature: As a user I want to be able to checkout products


  Background:
    Given I go to "product_page" with next parameters:
      |productUrl|catalog/product/view/id/17118/s/sophia-hat/category/137/|
    And I believe I am on "product_page"
    And I wait for 5 seconds
    And I click on "//div[@option-id='2056']"
    When I press "add_to_cart" in fieldset "product_info"
    And I wait for AJAX
    And I wait for 5 seconds

#      |productUrl|mens/headwear/snapbacks/sunder-snapbac|
#    And I believe I am on "product_page"
#    Then I click on "//div[@option-id='1619']"
#    Then I click on "//div[@option-id='1566']"
#    When I press "add_to_cart" in fieldset "product_info"
#    And I wait for AJAX
#    Then I should see "You added Sunder Snapback to your shopping cart."

      @1
      Scenario: Sign in on checkout and Visa payment method
        When I go to "checkout"
        And I believe I am on "checkout"
        And I wait for AJAX
        Then I wait until I see "Next"
        And I fill in the following into fieldset "shipping_information":
          |shipping_email           |kkatekoss@gmail.com|
        And I wait for AJAX
        Then I wait until I see "Password"
        And I fill in the following into fieldset "shipping_information":
          |shipping_password        |Kkate123|
        And I press "shipping_login" in fieldset "shipping_information"
        And I wait for AJAX
        And I wait for 15 seconds
       And I set "radio_button_for_login_user" in fieldset "shipping_method"
        And I press "shipping_next_button" in fieldset "shipping_method"
        And I wait for AJAX
        And I wait for 10 seconds
        And I believe I am on "checkout_payment"
        Then I wait until I see "Apply Promo Code"
        And I set "check_payment" in fieldset "payment_method" with following parameters:
          | paymentID | md_cybersource |
        Then I click on "//div[@class='payment-method _active']//button[span='Place Order']"
        And I wait for AJAX
        Then I should see "Thank you for your order!"

        @2
        Scenario: Register on checkout and Visa payment method
          When I go to "checkout"
          And I believe I am on "checkout"
          And I wait for AJAX
          Then I wait until I see "Next"
          And I fill in the following into fieldset "shipping_information":
            |shipping_email           |%rand%_guest@guidance.com|
          And I wait for AJAX
          And I fill in the following into fieldset "shipping_information":
            |shipping_first_name      |True|
            |shipping_last_name       |Marvin|
            |shipping_company         |Google|
            |shipping_street_address_1|4134 Del Rey Avenue|
            |shipping_city            |Marina Del Rey     |
            |shipping_zip_code        |90292              |
            |shipping_telephone       |310 754 4000       |
          When I select "United States" from "shipping_country" in fieldset "shipping_information"
          And I wait for AJAX
          And I select "California" from "shipping_state" in fieldset "shipping_information"
          #And I set "radio_button" in fieldset "shipping_method"
          And I wait for AJAX
          And I wait for 10 seconds
          And I press "shipping_next_button" in fieldset "shipping_method"
          And I wait for AJAX
          And I wait for 10 seconds
          And I believe I am on "checkout_payment"
          Then I wait until I see "Apply Promo Code"
          And I set "check_payment" in fieldset "payment_method" with following parameters:
            | paymentID | md_cybersource |
          Then I wait until I see "Place Order"
          And I select "Visa" from "card_type" in fieldset "payment_method"
          And I wait for 5 seconds
          And I fill in the following into fieldset "payment_method":
            |credit_card_number|4111111111111111|
          And I select "01 - January" from "expiration_month" in fieldset "payment_method"
          And I wait for 5 seconds
          And I select "2020" from "expiration_year" in fieldset "payment_method"
          And I wait for 5 seconds
          Then I click on "//div[@class='payment-method _active']//button[span='Place Order']"
          And I wait for AJAX
          Then I should see "Thank you for your order!"








