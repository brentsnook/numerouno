Feature: Recognise hundreds

  So that I can convert number strings into numerals
  I want to parse strings containing hundreds

  Scenario: Recognise a hundred with no multiplier
    When 'a hundred' is parsed
    Then the number will be 100

  Scenario: Recognise several hundred
    When 'five hundred' is parsed
    Then the number will be 500

  Scenario: Recognise numbers between hundreds
    When 'one hundred and thirty five' is parsed
    Then the number will be 135

  Scenario: Recognise different ways of stating thousands
    When 'twenty seven hundred' is parsed
    Then the number will be 2700