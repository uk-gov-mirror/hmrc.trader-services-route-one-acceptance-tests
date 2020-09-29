@TraderService
Feature: Pre-clearance - Export Journeys

  Scenario Outline: A user wants to complete a New EXPORT RouteOne journey
      Given the user is on the landing page for trader services
      When the user clicks the link to enter the route1 journey
      Then the user is on the declaration details page
      When the user enters declaration details "<epu>" and "<entryNo>"
      And the user enters a date "<day>" "<month>" "<year>"
      And the user clicks Continue
      Then the user is on the "Export" question page
      Then the user is on the Export Request Type page and selects <requestType>
      And the user is on the Route Type Page and selects <route>
      Then the user is one the Priority Page and selects <priority>
#       Then the user is on the Freight Page and selects <any>
#       When the user clicks Continue
#       Then the user will be on the contact details page ....

    Examples:
      | epu | entryNo | day | month | year |requestType | route  | priority| freight      |
      | 123 | A23456A | 01  | 09    | 2020 |New         | Route1 | None    | RoadRoRoRail |

  Scenario Outline: Error validation - no options selected
    Given the user navigates to the declaration details page
    When the user enters declaration details "<epu>" and "<entryNo>"
    And the user enters a date "<day>" "<month>" "<year>"
    And the user clicks Continue
    Then the user is on the "Export" question page
    And the user clicks Continue
    Then the user should see "Error:Tell us what is the type of request" error message for "requestType" on the page
    Then the user should see "Error:Tell us which route" error message for "routeType" on the page
    Then the user should see "Error:Select yes if the consigment contains priority goods" error message for "goodsPriority" on the page
#Above error messages to be updated & options to be split out with a page each

    Examples:
      | epu | entryNo | day | month | year |
      | 123 | A23456A | 01  | 09    | 2020 |


#  Scenario Outline: A user wants to complete a New EXPORT RouteOne journey (vessel qs)
#    Given the user is on the landing page for trader services
#    When the user clicks the link to enter the route1 journey
#    Then the user is on the declaration details page
#    When the user enters declaration details "<epu>" and "<entryNo>"
#    And the user enters a date "<day>" "<month>" "<year>"
#    And the user clicks Continue
#    Then the user is on the "Export" question page
#    Then the user is on the Export Request Type page and selects <requestType>
#    And the user is on the Route Type Page and selects <route>
#    Then the user is one the Priority Page and selects <priority>
#    Then the user is on the Freight Page and selects <any>
#    When the user clicks Continue
#     Then the user will be on the vessel questions page ...
#
#    Examples:
#      | epu | entryNo | day | month | year | requestType | route | priority |
#      | 123 | A23456A | 01  | 09    | 2020 | C1601       | Hold  | None     |

# ^^ Maybe maritime only option needed to prompt


#  Scenario Outline: A user wants to make changes to an Existing EXPORT RouteOne journey
#    Given the user is on the landing page for trader services
#    When the user clicks the link to enter the route1 journey
#    Then the user is on the declaration details page
#    When the user enters declaration details "<epu>" and "<entryNo>"
#    And the user enters a date "<day>" "<month>" "<year>"
#    And the user clicks Continue
#    Then the user is on the "Export" question page
#    Then the user is on the Export Request Type page and selects <requestType>
#    And the user is on the Route Type Page and selects <route>
#    Then the user is one the Priority Page and selects <priority>
#    Then the user is on the Freight Page and selects <any>
#    When the user clicks Continue
#     Then the user will be on the contact details page ....
#
#    Examples:
#      | epu | entryNo | day | month | year | requestType | route      | priority    |
#      | 123 | A23456A | 01  | 09    | 2020 |C1602       | Route1Cap  | LiveAnimals |


#Cover as many radio button options throughout different scenarios


