Feature: Recognise thousands

  So that I can convert number strings into numerals
  I want to parse strings containing thousands

  Scenario: Parse a thousand with no multiplier
    When 'a thousand' is parsed
    Then the number will be 1,000

  Scenario: Parse several thousand
    When 'six hundred and thirty seven thousand' is parsed
    Then the number will be 637,000

  Scenario: Parse numbers between thousands
    When 'six hundred and thirty seven thousand, four hundred and thirty eight' is parsed
    Then the number will be 637,438