Feature: Recognise simple numbers

  As a person parsing number strings 
  I want to obtain the numeric representation of a string containing simple numbers
  So that I can easily convert number strings into their numeric representation

  Scenario: Recognise the number zero

    When 'zero' is parsed
    Then the number will be 0

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