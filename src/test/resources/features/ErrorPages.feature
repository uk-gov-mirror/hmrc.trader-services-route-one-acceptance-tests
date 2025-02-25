@TraderServiceErrors @accessibility @ZAP
Feature: Error pages

  Scenario Outline: A user enters a duplicate case (Stub EPU: 667)
    Given the user is on the start page for trader services, selects New and continues
    Then the user will be on the entry details page
    * the user enters entry details "<epu>" and "<entryNo>"
    * the user enters today's date for entryDate
    * the user clicks continue
    Then the user will be on the <journey> Request type page
    When the user is on the Request type page, selects <requestType> and continues
    Then the user will be on the <journey> Route type page
    When the user is on the Route type page, selects <route> and continues
    Then the user will be on the <journey> YN Priority page
    When the user is on the YesNo Priority page, selects No and continues
    Then the user will be on the <journey> Transport type page
    When the user is on the Transport type page, selects <transport> and continues
    Then the user will be on the Export-Optional Transport details page
    * the user clicks continue
    Then the user will be on the Export Contact details page
    * the user enters an email address "<email>"
    * the user clicks continue
    Then the user will be on the multi-file upload pages for New
    * the user clicks the button to upload file "1" and selects "<file>"
    * the user clicks continue when files have finished uploading
    Then the user will be on the <journey> CYA page
    When the user clicks submit on the CYA page
    Then the user will be on the duplicate case error page

    Examples:
      | journey | epu | entryNo | requestType  | route   | transport | email   | file        |
      | Export  | 667 | A23456A | Cancellation | Route 2 | Air       | a@a.com | testOds.ods |


  Scenario Outline: A user enters a failed request (Stub EPU: 666)
    Given the user is on the start page for trader services, selects New and continues
    Then the user will be on the entry details page
    * the user enters entry details "<epu>" and "<entryNo>"
    * the user enters today's date for entryDate
    * the user clicks continue
    Then the user will be on the <journey> Request type page
    When the user is on the Request type page, selects <requestType> and continues
    Then the user will be on the <journey> Route type page
    When the user is on the Route type page, selects <route> and continues
    Then the user will be on the <journey> YN Priority page
    When the user is on the YesNo Priority page, selects No and continues
    Then the user will be on the <journey> Transport type page
    When the user is on the Transport type page, selects <transport> and continues
    When the user will be on the Export-Optional Transport details page
    * the user clicks continue
    Then the user will be on the Export Contact details page
    * the user enters an email address "<email>"
    * the user clicks continue
    Then the user will be on the multi-file upload pages for New
    * the user clicks the button to upload file "1" and selects "<file>"
    * the user clicks continue when files have finished uploading
    Then the user will be on the Export CYA page
    When the user clicks submit on the CYA page
    Then the user will be on the error page for internal server error

    Examples:
      | journey | epu | entryNo | requestType | route   | transport | email   | file        |
      | Export  | 666 | X23456A | New         | Route 3 | Air       | a@a.com | testOdt.odt |


  Scenario: A user hits the wrong url
    Given the user is on the start page for trader services, selects New and continues
    Then the user will be on the entry details page
    When the user navigates to the following "/entry-detailx"
    Then the user will be on the error page for page not found
    When the user clicks the link on the Page not found page they will be on the start page


