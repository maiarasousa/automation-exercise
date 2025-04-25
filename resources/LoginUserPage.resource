*** Settings ***

Library           SeleniumLibrary

Documentation     This is a test suite for logging in a user

*** Variables ***
${BROWSER}        chrome    
${EMAIL}          marianasilva@gmail.com
${PASSWORD}       testes123456
${INVALID_PASSWORD}  invalidpassword

*** Keywords ***

On the login page

    Click Element    xpath=//*[@id="header"]/div/div/div/div[2]/div/ul/li[4]/a
    Element Should Be Visible    xpath=//h2[contains(text(), 'Login to your account')]

Fill the form with email and password

    Input Text        xpath=//*[@data-qa="login-email"]   ${EMAIL}
    Input Password       xpath=//*[@data-qa="login-password"]   ${PASSWORD}
    Click Button       xpath=//*[@data-qa="login-button"]

Valid that the user was logged in
    
    Element Should Be Visible        xpath=//*[contains(text(), 'Logged in as')]

Fill the form with invalid email and password
    
        Input Text        xpath=//*[@data-qa="login-email"]   ${EMAIL}
        Input Password       xpath=//*[@data-qa="login-password"]   ${INVALID_PASSWORD}
        Click Button       xpath=//*[@data-qa="login-button"]
Valid that the user was not logged in

    Element Should Be Visible        xpath=//*[contains(text(),'Your email or password is incorrect!')]