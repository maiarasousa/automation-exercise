*** Settings ***
# Importa a biblioteca SeleniumLibrary para automação de navegador
Library           SeleniumLibrary

# Documentação do teste
Documentation     This is a test suite for registering a user

*** Variables ***
# Variáveis usadas no teste
${URL}            https://automationexercise.com/
${BROWSER}        chrome
${USERNAME}       Maria
${EMAIL}          maiara@gmail.com
${PASSWORD}       testes123456
${DATE_OF_BIRTH}  01/01/1990

*** Keywords ***

Open the browser
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

On the registration page
    Click Element    xpath=//*[@id="header"]/div/div/div/div[2]/div/ul/li[4]/a
    Element Should Be Visible    xpath=//h2[contains(text(), 'New User Signup!')]

Fill the form with valid data
    Input Text    xpath=//*[@data-qa="signup-name"]   ${USERNAME}
    Input Text    xpath=//*[@data-qa="signup-email"]   ${EMAIL}
    Click Button    xpath=//*[@data-qa="signup-button"]
    Element Should Be Visible    xpath=//*[contains(text(), 'Enter Account Information')]

#Valid that the user was registered