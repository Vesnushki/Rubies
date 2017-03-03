Feature: As a customer I want to go from Home page to some category
  in order to get access to PDP (site navigation)


  @1
  Scenario: Customer go to Headwear category from Home page
    Given I am on "home"
      And I believe I am on "home"
    Then I go to "category_page"
      And I should see "Jackets"
  @2
  Scenario: Customer go from category Headwear to PDP
    Given I am on "category_page"
      And I believe I am on "category_page"
    Then I follow "product" in fieldset "category_list"
      And I should see "PINNACLE JACKET"







