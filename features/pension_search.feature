Feature: Pension Search
    Scenario: As a user I should be able to search for Citizens Advice on Google
        Given I am on the Google Homepage
        When I search Google for "Citizens Advice"
            And I click the "Citizens Advice" link
        Then I am redirected to the Citizens Advice hompepage
            And the amount of items in the main navigation header is 10

    Scenario: As a user I should be able to search for Pension related help with the phrase Pension help
        Given I am on the Citizens Advice Homepage
            And I select the "England" region button
        When I search Citizens Advice for "Pension help"
        Then I will see a link labelled State Pension in the search results

        Scenario: As a user I should not be able to search for Pension related help with the phrase Housing help
        Given I am on the Citizens Advice Homepage
            And I select the "England" region button
        When I search Citizens Advice for "Housing help"
        Then I won't see a link labelled State Pension in the search results
