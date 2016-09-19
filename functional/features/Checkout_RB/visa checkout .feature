Feature: As a user I want to be able to checkout products


  Background:
    Given I go to "product_page" with next parameters:
      |productUrl|jethro-hat|
      And I believe I am on "product_page"
      And I select any color and size
      And I wait for AJAX
      When I press "add_to_cart" in fieldset "product_info"
      And I wait for AJAX
      Then I should see "You added Jethro Hat to your shopping cart."
    Given I go to "product_page" with next parameters:
      |productUrl|mens/headwear/caps/fiddler-17298|
      And I believe I am on "product_page"
      And I select any color and size
      And I wait for AJAX
      When I press "add_to_cart" in fieldset "product_info"
      And I wait for AJAX
      Then I should see "You added Fiddler Cap to your shopping cart."


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
        And I press "shipping_next_button" in fieldset "shipping_method"
        And I wait for AJAX
        And I believe I am on "checkout_payment"
        Then I wait until I see "Apply Gift Card"
