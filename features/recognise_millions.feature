Feature: Recognise millions

  As a person parsing number strings 
  I want to parse strings containing millions
  So that I can easily convert number strings into their numeric representation

  Scenario: Recognise a million with no multiplier
    When 'a million' is parsed
    Then the number will be 1,000,000

  Scenario: Recognise several million
    When 'six hundred and thirty seven million' is parsed
    Then the number will be 637,000,000

  Scenario: Recognise several hundred million straight
    When 'seven hundred million' is parsed
    Then the number will be 700,000,000

  Scenario: Recognise numbers between millions
    When 'six hundred and thirty seven million, four hundred and thirty eight thousand, two hundred and ninety eight' is parsed
    Then the number will be 637,438,298