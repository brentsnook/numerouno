Feature: Parse billions

  So that I can convert number strings into numerals
  I want to parse strings containing billions

  Scenario: Parse a billion with no multiplier
    When 'a billion' is parsed
    Then the number will be 1,000,000,000

  Scenario: Parse several billion
    When 'six hundred and thirty seven billion' is parsed
    Then the number will be 637,000,000,000

  Scenario: Parse several hundred billion straight
    When 'seven hundred billion' is parsed
    Then the number will be 700,000,000,000

  Scenario: Parse numbers between billions
    When 'two hundred and fifty billion, six hundred and thirty seven million, four hundred and thirty eight thousand, two hundred and ninety eight' is parsed
    Then the number will be 250,637,438,298