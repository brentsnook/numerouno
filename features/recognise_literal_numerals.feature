Feature: Recognise literal numerals

  As a person parsing number strings 
  I want to parse strings containing literal numerals
  So that I can parse a string regardless of whether it is a numeral or phrase

  Scenario: Recognise a literal numeral
    When '10' is parsed
    Then the number will be 10