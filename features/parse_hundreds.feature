Feature: Recognise hundreds

  So that I can convert number strings into numerals
  I want to parse strings containing hundreds

  Scenario: Parse a hundred with no multiplier
    When 'a hundred' is parsed
    Then the number will be 100

  Scenario: Parse several hundred
    When 'five hundred' is parsed
    Then the number will be 500

  Scenario: Parse numbers between hundreds
    When 'one hundred and thirty five' is parsed
    Then the number will be 135

  Scenario: Parse different ways of stating thousands
    When 'twenty seven hundred' is parsed
    Then the number will be 2700