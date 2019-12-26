Feature: Scroll up and down
  Test for scroll up and down to prevent issuse #5

  Scenario: Scroll slowly for 10 times
#    Given I start application
    When I scroll "list1" by 0,-200 in 200ms
    And I scroll "list1" by 0,0 in 500ms

    And I scroll "list1" by 0,-400 in 200ms
    And I scroll "list1" by 0,400 in 200ms
    And I scroll "list1" by 0,-400 in 200ms
    And I scroll "list1" by 0,400 in 200ms
    And I scroll "list1" by 0,-400 in 200ms
    And I scroll "list1" by 0,400 in 200ms
    And I scroll "list1" by 0,-400 in 200ms
    And I scroll "list1" by 0,400 in 200ms
    And I scroll "list1" by 0,-400 in 200ms
    And I scroll "list1" by 0,400 in 200ms
    And I scroll "list1" by 0,-400 in 200ms
    And I scroll "list1" by 0,400 in 200ms

    And I scroll "list1" by 0,0 in 500ms

    Then I expect the "item-1" to be "1 : inView"
    And I expect the "item-2" to be "2 : notInView"