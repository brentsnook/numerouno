Feature: Recognise trillions

  So that I can convert number strings into numerals
  I want to parse strings containing trillions

  Scenario: Parse a trillion with no multiplier
    When 'a trillion' is parsed
    Then the number will be 1,000,000,000,000

  Scenario: Parse several trillion
    When 'six hundred and thirty seven trillion' is parsed
    Then the number will be 637,000,000,000,000

  Scenario: Parse several hundred trillion straight
    When 'seven hundred trillion' is parsed
    Then the number will be 700,000,000,000,000

  Scenario: Parse numbers between trillions
    When 'nine hundred and forty two trillion, two hundred and fifty billion, six hundred and thirty seven million, four hundred and thirty eight thousand, two hundred and ninety eight' is parsed
    Then the number will be 942,250,637,438,298