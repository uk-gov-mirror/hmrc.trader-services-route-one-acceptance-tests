@TraderService
Feature: Check Back Links & Change Links

  #BACK LINKS
  Scenario Outline: A user wants to go back through the journey - Import
    Given the user is on the landing page for trader services
    When the user clicks the link to enter the route1 journey
    Then the user is on the declaration details page
    When the user enters declaration details "<epu>" and "<entryNo>"
    And the user enters today's date for entryDate
    And the user clicks Continue
    Then the user is on the Import Request Type page and selects <requestType>
    Then the user is on the Import Route Type Page and selects <route>
    Then the user is on the Import YesNo Priority Page and selects Yes
    When the user is on the Import Priority Options Page and selects <priority>
    Then the user is on the ALVS Page and selects Yes
    Then the user is on the Import Transport Type Page and selects <transport>
    Then the user is on the Import Vessel Page
    When the user enters <vesselName> for vessel name
    And the user enters today's date for vesselDate
    And the user enters a time for the vessel "23" "15"
    And the user clicks Continue
    Then the user is on the Import Contact Details Page
    When the user enters an email address "<email>"
    And the user clicks Continue
    Then the user is on the Import CYA page

    When the user clicks back
    Then the user is on the Import Contact Details Page
    And the details entered for name, email and phone number should be pre-filled with "<email>" & ""
#To be updated when NAME implemented

    When the user clicks back
    Then the user is on the Import Vessel Page
    And the details entered for Vessel Name should be pre filled with <vesselName>
    And the details entered for Date of Arrival should be pre filled with today's date
    And the details entered for Time of Arrival should be pre filled with 23 & 15

    When the user clicks back
    Then the user is on the Import Transport Page
    And the last selected option for vessel should be pre filled with <transport>

    When the user clicks back
    Then the user is on the ALVS Page
    And the last selected option for ALVS should be pre filled with Yes

    When the user clicks back
    Then the user is on the Import Priority Goods Page
    And the last selected option for priority goods should be pre filled with <priority>

    When the user clicks back
    Then the user is on the Import YN Priority Page
    And the last selected option for YN Priority should be pre filled with Yes

    When the user clicks back
    Then the user is on the Import Route Type Page
    And the last selected option for Route should be pre filled with <route>

    When the user clicks back
    Then the user is on the Import Request Type Page
    And the last selected option for Import Request should be pre filled with <requestType>

    When the user clicks back
    Then the user is on the declaration details page
    And the details entered for EPU & EntryNo should be pre filled with <epu> & <entryNo>
    And the details entered for Declaration Date should be pre filled with today's date

    When the user clicks back
    Then the user is on the landing page for trader services

    Examples:
| epu | entryNo | requestType | route   | priority   | transport | vesselName | name       | email      |
| 113 | 993456A | New         | Route 3 | Explosives | Maritime  | TestShip   | Abc Testb  | a@test.com |


  Scenario Outline: A user wants to go back through the journey - Export
    Given the user is on the landing page for trader services
    When the user clicks the link to enter the route1 journey
    Then the user is on the declaration details page
    When the user enters declaration details "<epu>" and "<entryNo>"
    And the user enters a date "<day>" "<month>" "<year>"
    And the user clicks Continue
    Then the user is on the Export Request Type page and selects <requestType>
    Then the user is on the Export Route Type Page and selects <route>
    Then the user is on the Export YesNo Priority Page and selects Yes
    When the user is on the Export Priority Options Page and selects <priority>
    Then the user is on the Export Transport Type Page and selects <transport>
    Then the user is on the Export Vessel Page
#    Then the user clicks Continue
#    Then the user is on the Export contact details page

    When the user clicks back
    Then the user is on the Export Transport Page
    And the last selected option for vessel should be pre filled with <transport>

    When the user clicks back
    Then the user is on the Export Priority Goods Page
    And the last selected option for priority goods should be pre filled with <priority>

    When the user clicks back
    Then the user is on the Export YN Priority Page
    And the last selected option for YN Priority should be pre filled with Yes

    When the user clicks back
    Then the user is on the Export Route Type Page
    And the last selected option for Route should be pre filled with <route>

    When the user clicks back
    Then the user is on the Export Request Type Page
    And the last selected option for Export Request should be pre filled with <requestType>

    When the user clicks back
    Then the user is on the declaration details page
    And the details entered for EPU & EntryNo should be pre filled with <epu> & <entryNo>
    And the details entered for Declaration Date should be pre filled with <day>, <month> & <year>

    When the user clicks back
    Then the user is on the landing page for trader services

    Examples:
      | epu | entryNo | day | month | year |requestType  | route   | priority      | transport | name      | email      |
      | 553 | A33456A | 01  | 10    | 2020 |Cancellation | Route 6 | Human remains | Air       | Abc Testb | a@test.com |


#CHANGE LINKS
  Scenario Outline: A user wants to change an answer via the CYA page - Import
    Given the user is on the landing page for trader services
    When the user clicks the link to enter the route1 journey
    Then the user is on the declaration details page
    When the user enters declaration details "<epu>" and "<entryNo>"
    And the user enters a date "<day>" "<month>" "<year>"
    And the user clicks Continue
    Then the user is on the Import Request Type page and selects <requestType>
    Then the user is on the Import Route Type Page and selects <route>
    Then the user is on the Import YesNo Priority Page and selects Yes
    When the user is on the Import Priority Options Page and selects <priority>
    Then the user is on the ALVS Page and selects Yes
    Then the user is on the Import Transport Type Page and selects <transport>
    Then the user is on the Import Vessel Page
    When the user enters <vesselName> for vessel name
    And the user enters a date for the vessel "<day>" "<month>" "<year>"
    And the user enters a time for the vessel "23" "15"
    And the user clicks Continue
    Then the user is on the Import Contact Details Page
    When the user enters an email address "<email>"
    And the user clicks Continue
    Then the user is on the Import CYA page

#    When the user clicks the change link for Contact
#    Then the user is on the Import Contact Details Page


    Examples:
      | epu | entryNo | day | month | year | requestType | route   | priority   | transport | vesselName | name      | email      |
      | 113 | 993456A | 12  |09     | 2020 | New         | Route 3 | Explosives | Maritime  | TestShip   | Abc Testb | a@test.com |