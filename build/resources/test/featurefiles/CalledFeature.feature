Feature: Called Feature Suite
  Called Feature

  @rest
  Scenario: Called Feature Test Case 1
    Given url "https://www.w3schools.com/xml/tempconvert.asmx/CelsiusToFahrenheit"
    And header Content-Type = "application/x-www-form-urlencoded"
    And request "Celsius=40"
    When method POST
    Then status 200
    * print responseHeaders
    * print responseType
    * print responseTime
    * print response
    * match response contains 104
    * match response //string == 104
    * match responseHeaders["X-Powered-By"] == [ "ASP.NET" ]
    * match responseHeaders["X-AspNet-Version"][0] == "4.0.30319"
    * match responseType == "xml"
    * assert responseTime < 1000