Feature: Replace number string

  In order to allow tools like Chronic to parse a string containing a number
  I want to replace number phrases within a string with numerals

  Scenario: Replace single occurrence
    When 'I have twenty seven apples' is substituted
	Then the string will be 'I have 27 apples'

  Scenario: Replace multiple occurrences
    When 'if I have thirty apples and take away thirteen then I have seventeen' is substituted
    Then the string will be 'if I have 30 apples and take away 13 then I have 17'

  
