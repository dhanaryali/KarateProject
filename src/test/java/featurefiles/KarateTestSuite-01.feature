Feature: Karate Test Suite 1
  This is my first karate test suite

  Scenario: Karate Test Case 1
    This is my first Karate test case
    Given def a = 10
    And def b = 20
    When def c = a + b
    Then assert c == 30
    And print "c = ", c
    And karate.log("END of the Test1")

  Scenario: Karate Test Case 2
  This is my second Karate test case
    Given def a = 10
    * def b = 20
    When def c = a + b
    Then assert c == 30
    * print "c = ", c
    * karate.log("END of the Test 2")

  Scenario: Karate Test Case 3
  This is my third Karate test case
    * def a = 10
    * def b = 20
    * def c = a + b
    * assert c == 30
    * print "c = ", c
    * karate.log("END of the Test 3")