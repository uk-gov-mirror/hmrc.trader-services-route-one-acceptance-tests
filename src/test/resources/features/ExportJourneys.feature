@TraderService
Feature: Customs check - Export Journeys

  Scenario Outline: A user wants to complete a New Export RouteOne journey
    Given the user is on the start page for trader services and selects New
      Then the user is on the declaration details page
      When the user enters declaration details "<epu>" and "<entryNo>"
      And the user enters today's date for entryDate
      And the user clicks Continue
      Then the user is on the Export Request Type page and selects <requestType>
      Then the user is on the Export Route Type Page and selects <route>
      Then the user is on the Export YesNo Priority Page and selects Yes
      When the user is on the Export Priority Options Page and selects <priority>
      Then the user is on the Export Transport Type Page and selects <transport>
      Then the user is on the Export-Optional Vessel Page
      Then the user enters "<vesselName>" for vessel name
      And the user enters today's date for vesselDate
      Then the user clicks Continue
      Then the user is on the Export Contact Details Page
      And the user enters an email address "<email>"
      And the user clicks Continue
      Then the user is on the First upload page
      When the user clicks the button to upload and selects "first" file
      Then the user should be on the new file upload confirmation page after uploading 1 document/s
      Then the user selects No to uploading another file
      Then the user is on the Export CYA page
      Then the user clicks Submit on the CYA page
      Then the user is on the New confirmation page
      When the user clicks the send docs link on the New confirmation page they will go back to the start
    And the last selected option for journey type should be pre filled with Nothing

    Examples:
      | epu | entryNo | requestType | route   | priority      | transport | vesselName  | email   |
      | 123 | A23456A | New         | Route 1 | Human remains | Maritime  | Test Vessel | a@a.com |


  Scenario Outline: Route-Hold: A user should reach the mandatory vessel page
    Given the user is on the start page for trader services and selects New
    Then the user is on the declaration details page
    When the user enters declaration details "<epu>" and "<entryNo>"
    And the user enters today's date for entryDate
    And the user clicks Continue
    Then the user is on the Export Request Type page and selects <requestType>
    Then the user is on the Export Route Type Page and selects <route>
    When the user is on the Export YesNo Priority Page and selects No
    Then the user is on the Export Transport Type Page and selects <transport>
    Then the user is on the Export-Mandatory Vessel Page

    Examples:
      | epu | entryNo | requestType | route | transport |
      | 123 | A23456A | New         | Hold  | Air       |

  Scenario Outline: C1601: A user should reach the mandatory vessel page
    Given the user is on the start page for trader services and selects New
    Then the user is on the declaration details page
    When the user enters declaration details "<epu>" and "<entryNo>"
    And the user enters today's date for entryDate
    And the user clicks Continue
    Then the user is on the Export Request Type page and selects <requestType>
    Then the user is on the Export Route Type Page and selects <route>
    Then the user is on the Export YesNo Priority Page and selects No
    Then the user is on the Export Transport Type Page and selects <transport>
    Then the user is on the Export-Mandatory Vessel Page
    Then the user enters "<vesselName>" for vessel name
    And the user enters today's date for vesselDate
    And the user enters a time for the vessel "16" "20"
    Then the user clicks Continue

    Examples:
      | epu | entryNo | requestType | route   | transport    | vesselName |
      | 123 | A23456A | C1601       | Route 1 | RoadRoRoRail | Train1     |


  Scenario Outline: C1602: A user should be on the mandatory vessel page
    Given the user is on the start page for trader services and selects New
    Then the user is on the declaration details page
    When the user enters declaration details "<epu>" and "<entryNo>"
    And the user enters today's date for entryDate
    And the user clicks Continue
    Then the user is on the Export Request Type page and selects <requestType>
    Then the user is on the Export Route Type Page and selects <route>
    Then the user is on the Export YesNo Priority Page and selects No
    Then the user is on the Export Transport Type Page and selects <transport>
    Then the user is on the Export-Mandatory Vessel Page

    Examples:
      | epu | entryNo | requestType | route   | transport     |
      | 123 | A23456A | C1602       | Route 1 | RoadRoRoRail  |
