Feature: Recognise millions

  So that I can convert number strings into numerals
  I want to parse strings containing millions

  Scenario: Parse a million with no multiplier
    When 'a million' is parsed
    Then the number will be 1,000,000

  Scenario: Parse several million
    When 'six hundred and thirty seven million' is parsed
    Then the number will be 637,000,000

  Scenario: Parse several hundred million straight
    When 'seven hundred million' is parsed
    Then the number will be 700,000,000

  Scenario: Parse numbers between millions
    When 'six hundred and thirty seven million, four hundred and thirty eight thousand, two hundred and ninety eight' is parsed
    Then the number will be 637,438,298