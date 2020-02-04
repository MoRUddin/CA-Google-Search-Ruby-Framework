Feature: Pension Search
    Scenario: As a user I should be able to search for Citizens Advice on Google
        Given I am on the Google Homepage
        When I search Google for "Citizen Advice"
            And I click the "Citizens Advice" link
        Then I am redirected to the Citizen Advice hompepage
            And the amount of items in the main navigation header is 10