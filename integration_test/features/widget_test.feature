Feature: Counter increments smoke test
  Scenario: Counter increments smoke test
    Given I pause for 1 second
    Then I expect the text "0" to be present
    And I expect the text "1" to be absent
    Given I tap the "plus" button
    Then I expect the text "0" to be absent
    And I expect the text "1" to be present