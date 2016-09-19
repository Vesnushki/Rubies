Feature: This feature file is needed to create data that can be used in other test cases.
    Results are not checked here is at may be that those items are already created.

Scenario Outline: Users registration to check Login feature
  Given I am on "register_account"
  When I fill in the following into fieldset "account_info":
    | email                |<email>|
    | first_name           |<first_name>|
    | last_name            |Behat Last Name|
    | password             |123123qa|
    | password_confirmation|123123qa|
    | address              | somestreet        |
    | city                 | somecity           |
    | zip_code             | 90292              |
    | shipping_phone       | 123456789012       |
    | date_of_birth_month  | 02                 |
    | date_of_birth_day    | 02                 |
  When I select "United States" from "country" in fieldset "account_info"
  And I select "California" from "state" in fieldset "account_info"
  And I select "Female" from "gender" in fieldset "account_info"
  And I press "Submit"
  When I wait for 15 seconds

  Examples:
  |        email         |first_name|
  |befdghatueeeser1@guidance.com|  User1   |
  |besfsddffghatuser2@guidance.com|  User2   |

#  Scenario: Add review and approve it in order to see that Review is shown on the PDP
#    Given I go to "product_page" with next parameters:
#      |productUrl|10262|
#    And I believe I am on "product_page"
#    When I follow "write_first_review" in fieldset "product_info"
#    And I believe I am on "product_page"
#    And I fill in the following into fieldset "customer_reviews":
#      |reviewer_name|Marry Jane|
#      |review_summary|Really nice |
#      |review_text|These are high quality O rings.|
#    And I rate a product
#    And I press "submit_review" in fieldset "customer_reviews"
#    When I am logged in to admin panel
#    And I am on "manage_pending_reviews"
#    Then I should see "Marry Jane"
#    And I should see "Really nice"
#    And I should see "These are high quality O rings."
