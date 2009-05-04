Feature: Recognise billions

  As a person parsing number strings 
  I want to parse strings containing trillions
  So that I can easily convert number strings into their numeric representation

  Scenario: Recognise a trillion with no multiplier
    When 'a trillion' is parsed
    Then the number will be 1,000,000,000,000

  Scenario: Recognise several trillion
    When 'six hundred and thirty seven trillion' is parsed
    Then the number will be 637,000,000,000,000

  Scenario: Recognise several hundred trillion straight
    When 'seven hundred trillion' is parsed
    Then the number will be 700,000,000,000,000

  Scenario: Recognise numbers between trillions
    When 'nine hundred and forty two trillion, two hundred and fifty billion, six hundred and thirty seven million, four hundred and thirty eight thousand, two hundred and ninety eight' is parsed
    Then the number will be 942,250,637,438,298