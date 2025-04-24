*** Settings ***

Documentation     This is a test suite for logging in a user


Resource          ../resources/LoginUserPage.resource
Resource          ../resources/RegisterUserPage.resource

Suite Setup    Open the browser

*** Test Cases ***

Login user with valid credentials
    [Tags]    login
    Given on the login page
    When fill the form with email and password
    Then valid that the user was logged in
