Feature: Substitute numbers zero to ten

  In order to allow tools like Chronic to parse a string containing a number
  I want to substitute number phrases within a string with numerals

  Scenario Outline: Substitute normal numbers
    When 'I have <string> Alf pogs' has numbers substituted 
    Then the string will be 'I have <number> Alf pogs'

  Scenarios: Substitute 1 to 10
    | string  | number  |
    | zero    | 0       |
    | one     | 1       |
    | two     | 2       |
    | three   | 3       |
    | four    | 4       |
    | five    | 5       |
    | six     | 6       |
    | seven   | 7       |
    | eight   | 8       |
    | nine    | 9       |
    | ten     | 10      |

  
