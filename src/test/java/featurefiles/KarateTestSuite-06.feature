Feature: Karate Test Suite 6
  Using logical operator && in validation

  Scenario: Karate Test Case 1

    * def a = 10
    * def b = 20
    * assert a == 10 && b == 20
    * print "After assert"