Feature:  karate db test suite
  Interacting with DB

  Background: dbInit
    * def db = Java.type('misc.MyDBUtil')


  @select
  Scenario: select stmt test case

    * def rows = db.selectStatement("select * from tools")
    * print rows
    * match rows contains "Selenium"


  @insert
  Scenario: insert stmt test case

    * def res = db.insertStatement("Insert into tools values(583,'Dhana','RDR')")
    * print res
    * match res == 'Success'

  @update
  Scenario: update stmt test case

    * def rowsAffected = db.updateStatement("update tools set name='sample583' where id=583")
    * print rowsAffected
    * assert rowsAffected >= 1

  Scenario: delete stmt test case

    * def rowsAffected = db.deleteStatement("delete from tools where id=583")
    * print rowsAffected
    * assert rowsAffected >= 1