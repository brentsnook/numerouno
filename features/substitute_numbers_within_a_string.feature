Feature: Substitute numbers within a string

  In order to allow tools like Chronic to parse a string containing a number
  I want to substitute number phrases within a string with numerals

  Scenario Outline: Substitute normal numbers
    When 'I have <string> Alf pogs' has numbers substituted 
    Then the string will be 'I have <number> Alf pogs'

  Scenarios: Substitute numbers
    | string    | number  |
    | zero      | 0       |
    | one       | 1       |
    | two       | 2       |
    | three     | 3       |
    | four      | 4       |
    | five      | 5       |
    | six       | 6       |
    | seven     | 7       |
    | eight     | 8       |
    | nine      | 9       |
    | ten       | 10      |
    | eleven    | 11      |
    | twelve    | 12      |
    | thirteen  | 13      |
    | fourteen  | 14      |
    | fifteen   | 15      |
    | sixteen   | 16      |
    | seventeen | 17      |
    | eighteen  | 18      |
    | nineteen  | 19      |
    | twenty    | 20      |
    | thirty    | 30      |
    | forty     | 40      |
    | fifty     | 50      |
    | sixty     | 60      |
    | seventy   | 70      |
    | eighty    | 80      |
    | ninety    | 90      |
    | seven million, nine hundred and seventy seven | 7000977 |

  
