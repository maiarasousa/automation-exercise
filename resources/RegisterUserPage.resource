*** Settings ***

Library           SeleniumLibrary

Documentation     This is a test suite for registering a user

*** Variables ***
${URL}            https://automationexercise.com/
${BROWSER}        chrome
${USERNAME}       Mariana
${LAST_NAME}      Silva
${COMPANY}        Automation
${ADDRESS}        1234 Maple Street
${STATE}          Illinois
${CITY}           Springfield
${ZIP_CODE}       62704
${MOBILE_NUMBER}  312555-0198
${EMAIL}          marianasilva@gmail.com
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
    Input Text        xpath=//*[@data-qa="signup-name"]   ${USERNAME}
    Input Text        xpath=//*[@data-qa="signup-email"]   ${EMAIL}
    Click Button       xpath=//*[@data-qa="signup-button"]
    Element Should Be Visible        xpath=//*[contains(text(), 'Enter Account Information')]
    Click Element        xpath=//*[@id="id_gender2"]
    Input Password       xpath=//*[@data-qa="password"]   ${PASSWORD}
    Click Element        xpath=//*[@id="days"]
    Select From List By Value        xpath=//*[@id="days"]   31
    Click Element        xpath=//*[@id="months"]
    Select From List By Value        xpath=//*[@id="months"]   5
    Click Element        xpath=//*[@id="years"]
    Select From List By Value        xpath=//*[@id="years"]   1990
    Input Text        xpath=//*[@data-qa="first_name"]   ${USERNAME}
    Input Text        xpath=//*[@data-qa="last_name"]   ${LAST_NAME}
    Input Text        xpath=//*[@data-qa="company"]   ${COMPANY}
    Input Text        xpath=//*[@id="address1"]   ${ADDRESS}
    Select From List By Value        xpath=//*[@id="country"]   United States
    Input Text        xpath=//*[@id="state"]   ${STATE}
    Input Text        xpath=//*[@id="city"]   ${CITY}
    Input Text        xpath=//*[@id="zipcode"]   ${ZIP_CODE}
    Input Text        xpath=//*[@id="mobile_number"]   ${MOBILE_NUMBER}
    Click Element        xpath=//*[@data-qa="create-account"]

Valid that the user was registered
    Element Should Be Visible        xpath=//*[contains(text(), 'Account Created!')]
    Click Element        xpath=//*[@data-qa="continue-button"]
    Element Should Be Visible        xpath=//*[contains(text(), 'Logged in as')]