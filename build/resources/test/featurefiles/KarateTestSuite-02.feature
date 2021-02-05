Feature: Karate Test Suite 2
  Validating JSON Content

  Scenario: JSON Test Case 1
    Given def json = { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}
    * print json
    * print json.id
    * print json.tool.name

  Scenario: JSON Test Case 2
    Given def json =
    """
    {
        "id" : "101",
        "tool": { "name":"Karate", "version":"0.9.6"}
     }
    """
    * print json
    * print json.id
    * print json.tool.name

  Scenario: JSON Test Case 3
    Given def json = { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}

    * assert json.id == "101"
    * assert json.tool.name == "Karate"

  Scenario: JSON Test Case 4
    Given def json = { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}

    * match json.tool == { "name":"Karate", "version":"0.9.6"}

  Scenario: JSON Test Case 5
    Given def json = { "id" : "101", "tool": { "name":"Karate", "version":"0.9.5"}}

    * match json.tool == { "name":"Karate", "version":"0.9.5"}