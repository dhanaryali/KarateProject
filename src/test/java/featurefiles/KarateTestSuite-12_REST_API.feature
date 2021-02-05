Feature: Karate Test Suite 12
  Data driven testing

  @ddt
 Scenario Outline: DDT Test Case 1
    Given url "https://www.w3schools.com/xml/tempconvert.asmx/CelsiusToFahrenheit"
    And header Content-Type = "application/x-www-form-urlencoded"
    And request "Celsius=<Temp>"
    When method POST
    Then status 200
    * print responseHeaders
    * print responseType
    * print responseTime
    * print response
    * match response contains <Result>
    * match response //string == <Result>
    * match responseHeaders["X-Powered-By"] == [ "ASP.NET" ]
    * match responseHeaders["X-AspNet-Version"][0] == "4.0.30319"
    * match responseType == "xml"
    * assert responseTime < 1000

    Examples:
      |Temp  |Result|
      |37    |98.6  |
      |40    |104   |


  @ddt
  Scenario Outline: DDT Test Case 2
    Given url "https://www.w3schools.com/xml/tempconvert.asmx/CelsiusToFahrenheit"
    And header Content-Type = "application/x-www-form-urlencoded"
    And request "Celsius=<Temp>"
    When method POST
    Then status 200
    * print responseHeaders
    * print responseType
    * print responseTime
    * print response
    * match response contains <Result>
    * match response //string == <Result>
    * match responseHeaders["X-Powered-By"] == [ "ASP.NET" ]
    * match responseHeaders["X-AspNet-Version"][0] == "4.0.30319"
    * match responseType == "xml"
    * assert responseTime < 1000

    Examples:
     | read("classpath:data.csv") |