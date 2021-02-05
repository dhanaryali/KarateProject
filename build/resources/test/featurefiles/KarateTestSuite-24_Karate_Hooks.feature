Feature: Karate Test Suite 24
  Using Scenario and Feature level test fixture (Karate Hooks)

  Background: init
    * print "From Background block"
#    * configure afterScenario =
#    """
#    function (){
#    karate.log("from after scenario")
#    }
#    """
    * configure afterFeature =
    """
    function (){
    karate.log("from after feature")
    }
    """

  Scenario: Karate hooks Test Case 1
    * print "From Scenario block"