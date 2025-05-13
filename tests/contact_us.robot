*** Settings ***

Documentation     This is a test suite for contact us page

Resource          ../resources/RegisterUserPage.resource
Resource          ../resources/ContactUsPage.resource

Suite Setup    Open the browser

*** Test Cases ***

Contact us form
    [Tags]    contact_us
    Given that home page is visible
    And fill the form of contact us
    When verify that the message was sent successfully
    Then valid return to home page
    



