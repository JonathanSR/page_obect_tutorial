@demo
Feature: VSA Autos - Submit - Submit Feature
  Scenario: User Submits completed feature specs
    Given I am on the Root Page
    When I login I should be on the Home Page
    And I click on the submit button
    Then I should be on the Submit Page
    And I submit an auto 
    Then I should see that auto logged in my dashboard
