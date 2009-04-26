Feature: Recognise simple numbers

  As a person parsing number strings 
  I want to obtain the numeric representation of a string containing simple numbers
  So that I can easily convert number strings into their numeric representation

  Scenario: Recognise 0
    When 'zero' is parsed
    Then the number will be 0

  Scenario: Recognise 1
    When 'one' is parsed
    Then the number will be 1

  Scenario: Recognise 2
    When 'two' is parsed
    Then the number will be 2

  Scenario: Recognise 3
    When 'three' is parsed
    Then the number will be 3

  Scenario: Recognise 4
    When 'four' is parsed
    Then the number will be 4

  Scenario: Recognise 5
    When 'five' is parsed
    Then the number will be 5

  Scenario: Recognise 6
    When 'six' is parsed
    Then the number will be 6

  Scenario: Recognise 7
    When 'seven' is parsed
    Then the number will be 7

  Scenario: Recognise 8
    When 'eight' is parsed
    Then the number will be 8

  Scenario: Recognise 9
    When 'nine' is parsed
    Then the number will be 9

  Scenario: Recognise 10
    When 'ten' is parsed
    Then the number will be 10

  Scenario: No number found
 
  Scenario: Number string contains noise
   # 
   # Scenario Outline: Parse normal numbers
   #   When <string> is parsed 
   #   Then the number should be <number>
   #   
   # Scenarios: Parse 1 to 10
   #   | string  | number  |
   #   | zero    | 0       |
   #   | one     | 1       |
   #   | two     | 2       |
   #   | three   | 3       |
   #   | four    | 4       |
   #   | five    | 5       |
   #   | six     | 6       |
   #   | seven   | 7       |
   #   | eight   | 8       |
   #   | nine    | 9       |
   #   | ten     | 10      |

  # Scenario: Parse numbers that are powers of 10
  # 
  # Scenario: Parse numbers that are powers of 100
  # 
  # Scenario: Parse numbers that are powers of 1000
  # 
  # Scenario: Parse numbers that are powers of 10,000
  # 
  # Scenario: Parse numbers that are powers of 100,000
  # 
  # Scenario: Parse numbers that are powers of 1,000,000