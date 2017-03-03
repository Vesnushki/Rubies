Feature: As a guest user I want to register on the website
  in order to get access to additional features available for registered users

@1
  Scenario: User registration with correct information
    Given I am on "register_account"
    When I fill in the following into fieldset "account_info":
      | first_name           | BehatName               |
      | last_name            | Behat LastName          |
      | email                | %rand%_user@guidance.com|
      | company_name         | Test                    |
      | password             | 123123qa!               |
      | password_confirmation| 123123qa!               |
    When I press "submit" in fieldset "account_info"
    Then I should see "Thank you for registering. Your account is under review."


@2
Scenario: User registration with existing email
  Given I am on "register_account"
  When I fill in the following into fieldset "account_info":
    | first_name           | BehatName               |
    | last_name            | Behat LastName          |
    | email                | kkatekoss@gmail.com     |
    | company_name         | Test                    |
    | password             | 123123qa!               |
    | password_confirmation| 123123qa!               |
  When I press "submit" in fieldset "account_info"
  Then I should see "There is already an account with this email address. If you are sure that it is your email address, click here to get your password and access your account."
