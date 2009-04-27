Feature: Recognise powers of 10

  As a person parsing number strings 
  I want to parse strings containing numbers that are powers of 10
  So that I can easily convert number strings into their numeric representation

  Scenario: Recognise 11
    When 'eleven' is parsed
    Then the number will be 11

  Scenario: Recognise 12
    When 'twelve' is parsed
    Then the number will be 12

  Scenario: Recognise 13
    When 'thirteen' is parsed
    Then the number will be 13
  
  Scenario: Recognise 14
    When 'fourteen' is parsed
    Then the number will be 14
  
  Scenario: Recognise 15
    When 'fifteen' is parsed
    Then the number will be 15
  
  Scenario: Recognise 16
    When 'sixteen' is parsed
    Then the number will be 16
  
  Scenario: Recognise 17
    When 'seventeen' is parsed
    Then the number will be 17
  
  Scenario: Recognise 18
    When 'eighteen' is parsed
    Then the number will be 18
  
  Scenario: Recognise 19
    When 'nineteen' is parsed
    Then the number will be 19
  
  Scenario: Recognise 20
    When 'twenty' is parsed
    Then the number will be 20
  
  Scenario: Recognise 21 as separate words
    When 'twenty one' is parsed
    Then the number will be 21
  
  Scenario: Recognise 21 as a single word
    When 'twentyone' is parsed
    Then the number will be 21 
  
  Scenario: Recognise 30 
    When 'thirty' is parsed
    Then the number will be 30
  
  Scenario: Recognise 40 
    When 'forty' is parsed
    Then the number will be 40
  
  Scenario: Recognise 50 
    When 'fifty' is parsed
    Then the number will be 50
  
  Scenario: Recognise 60 
    When 'sixty' is parsed
    Then the number will be 60
  
  Scenario: Recognise 70 
    When 'seventy' is parsed
    Then the number will be 70
  
  Scenario: Recognise 80 
    When 'eighty' is parsed
    Then the number will be 80
  
  Scenario: Recognise 90 
    When 'ninety' is parsed
    Then the number will be 90