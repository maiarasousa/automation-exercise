*** Settings ***

Library           SeleniumLibrary

Documentation

*** Keywords ***

Click on the logout button
    Click Element    xpath=//*[@id="header"]/div/div/div/div[2]/div/ul/li[4]/a

Valid that the user was logged out
    Element Should Be Visible    xpath=//h2[contains(text(), 'Login to your account')]