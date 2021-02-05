Feature: Calling Feature Suite
  Calling Feature from external file

  @rest
  Scenario: Calling Feature Test Case 1
    * def result = call read("CalledFeature.feature")
    * print result
    * assert result.response.string._ == "104"