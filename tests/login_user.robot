*** Settings ***
Library    SeleniumLibrary

Documentation     This is a test suite for logging in a user


Resource          ../resources/LoginUserPage.resource
Resource          ../resources/RegisterUserPage.resource

Suite Setup    Open the browser
Suite Teardown    Close Browser



*** Test Cases ***

Login user with valid credentials
    [Tags]    login
    Given on the login page
    When fill the form with email and password
    Then valid that the user was logged in

Login user with invalid credentials
    [Tags]    login_invalid
    Given on the login page
    When fill the form with invalid email and password
    Then valid that the user was not logged in