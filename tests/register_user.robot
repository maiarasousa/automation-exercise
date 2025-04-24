*** Settings ***

Documentation     This is a test suite for registering a user

Resource          ../resources/RegisterUserPage.resource

Suite Setup    Open the browser


*** Test Cases ***

Register a new user
    [Tags]    register
    Given on the registration page
    When fill the form with valid data
    Then valid that the user was registered