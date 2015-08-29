Feature: Calculate numbers
  As a calculator user
  I want to compute numbers accurately
  So I can go back to business fast

# predefined steps example 
@add
Scenario: Add two numbers
  Given I am on the Welcome Screen
  When I touch the "2" button
  And I touch the "+" button
  And I touch the "2" button
  When the calculator is run
  Then the output should be "4"

# simple custom steps examples
@multiply
Scenario: Multiply two numbers
  Given the input "2*2"
  When the calculator is run
  Then the output should be "4"

@divide
Scenario: Divide two numbers
  Given the input "2/2"
  When the calculator is run
  Then the output should be "1"
  
@subtract
Scenario: Subtract two numbers
  Given the input "25-5"
  When the calculator is run
  Then the output should be "20"

@complex
Scenario: Do a complex calculation
  Given the input "25+5*3"
  When the calculator is run
  Then the output should be "40"

# complex step example
@multiple
Scenario Outline: Caculate Expressions
    Given the table input <Input>
    When the calculator is run
    Then the output from table should be <Output>
    Examples:
      | Input   | Output |
      | "3+5"   | 8      |
      | "25-4"  | 21     |
      | "10/2"  | 5      |
      | "25+5*3"| 40     |
      | "4-5"   | -1     |

