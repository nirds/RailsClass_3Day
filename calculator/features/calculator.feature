Feature: We want an app that does basic calculations for us
and tracks our calculations.

Scenario: Adding
  Given I am on the homepage
    And I fill in "2,3" in "Input"
  When  I fill in "add" in "Function"
    And I click "Create Calculation"
  Then I should see "5" as the "Result"

Scenario: Subtraction
  Given I am on the homepage
    And I fill in "2,3" in "Input"
  When  I fill in "subtract" in "Function"
    And I click "Create Calculation"
  Then I should see "-1" as the "Result"