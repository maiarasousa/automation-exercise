*** Settings ***

Documentation     This is a test suite for registering a user

Resource          ../resources/RegisterUserPage.resource

Suite Setup    Open the browser
Suite Teardown    Close Browser

Library    SeleniumLibrary

*** Test Cases ***

Register a new user
    [Tags]    register
    Given on the registration page
    When fill the form with valid data
    Then valid that the user was registered

Register a new user with email already registered
    [Tags]    register_email_already_registered
    Given on the registration page
    When fill the form with email already registered
    Then valid message of the email adress already exist