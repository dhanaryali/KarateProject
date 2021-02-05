Feature: Karate Test Suite 7
  Validating data types of a variable

  Scenario: Data type validation Test Case 1

    * def a = 10
    * def b = "Karate"
    * def c = true
    * match a == "#number"
    * match b == "#string"
    * match c == "#boolean"