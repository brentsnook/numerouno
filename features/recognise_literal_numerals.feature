Feature: Recognise literal numerals

  So that I can avoid checking for number strings or numerals
  I want to parse strings containing literal numerals

  Scenario: Recognise a literal numeral
    When '10' is parsed
    Then the number will be 10