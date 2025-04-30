*** Settings ***

Documentation     This is a test suite for logging out a user

Resource          ../resources/LoginUserPage.resource
Resource          ../resources/RegisterUserPage.resource
Resource          ../resources/LogoutUser.resource

Suite Setup    Open the browser

*** Test Cases ***
Logout user
    [Tags]    logout
    Given on the login page
    When fill the form with email and password
    Then valid that the user was logged in
    When click on the logout button
    Then valid that the user was logged out