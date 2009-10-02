Feature: Substitute numbers zero to ten

  In order to allow tools like Chronic to parse a string containing a number
  I want to substitute number phrases within a string with numerals

  Scenario: Substitute single occurrence
    When 'I have twenty seven apples' has numbers substituted
	Then the string will be 'I have 27 apples'

  Scenario: Substitute multiple occurrences
    When 'if I have thirty apples and take away thirteen then I have seventeen' has numbers substituted
    Then the string will be 'if I have 30 apples and take away 13 then I have 17'

  Scenario: Substitute strings with no numbers untouched
    When 'I contain no numbers' has numbers substituted
    Then the string will be 'I contain no numbers'

  
