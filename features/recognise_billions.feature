Feature: Recognise billions

  As a person parsing number strings 
  I want to parse strings containing billions
  So that I can easily convert number strings into their numeric representation

  Scenario: Recognise a billion with no multiplier
    When 'a billion' is parsed
    Then the number will be 1,000,000,000

  Scenario: Recognise several billion
    When 'six hundred and thirty seven billion' is parsed
    Then the number will be 637,000,000,000

  Scenario: Recognise several hundred billion straight
    When 'seven hundred billion' is parsed
    Then the number will be 700,000,000,000

  Scenario: Recognise numbers between billions
    When 'two hundred and fifty billion, six hundred and thirty seven million, four hundred and thirty eight thousand, two hundred and ninety eight' is parsed
    Then the number will be 250,637,438,298