Feature:  Karate Test Suite 16
  Writing Response to External File

  Scenario: Writing Response to a File
    * def util = Java.type("misc.Utils")
    Given url "https://reqres.in/api/users?page=2"
    When method get
    Then status 200
    * def res = get response
    #* def res = get response $.data[0].email
    * print res
    * util.writeToFile("jsonResult.json", res)

  Scenario: Reading json Result file
    * def data = read("classpath:jsonResult.json")
    * print data
    * def textData = read("classpath:sample.txt")
    * print textData