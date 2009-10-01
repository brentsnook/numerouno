Feature: Recognise powers of ten

  So that I can convert number strings into numerals
  I want to parse strings containing powers of ten

  Scenario Outline: Parse normal numbers
    When '<string>' is parsed 
    Then the number will be <number>
     
  Scenarios: Parse 11 to 20 and powers of 10
    | string    | number  |
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

  Scenario: Recognise 21 as separate words
    When 'twenty one' is parsed
    Then the number will be 21
  
  Scenario: Recognise 21 as a single word
    When 'twentyone' is parsed
    Then the number will be 21