Feature: Recognise thousands

  As a person parsing number strings 
  I want to parse strings containing thousands
  So that I can easily convert number strings into their numeric representation

  Scenario: Recognise a thousand with no multiplier
    When 'a thousand' is parsed
    Then the number will be 1000

  Scenario: Recognise several thousand
    When 'six hundred and thirty seven thousand' is parsed
    Then the number will be 637000

  Scenario: Recognise numbers between thousands
    When 'six hundred and thirty seven thousand, four hundred and thirty eight' is parsed
    Then the number will be 637438