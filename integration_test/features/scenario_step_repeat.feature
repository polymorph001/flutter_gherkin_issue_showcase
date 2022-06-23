Feature: Showcase that Scenarios are repeated compoundly
  Note that in this case you will see Scenario B will also have steps of A
  Scenario: A
    Given I pause for 1 second
    Then I expect the text "0" to be present
    And I expect the text "1" to be absent
    Given I tap the "plus" button
    Then I expect the text "0" to be absent
    And I expect the text "1" to be present
  Scenario: B
    Given I pause for 1 second
    Then I expect the text "0" to be present
    And I expect the text "1" to be absent
    Given I tap the "plus" button
    Then I expect the text "0" to be absent
    And I expect the text "1" to be present