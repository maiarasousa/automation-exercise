*** Settings ***
Variables       ../env/dev.py
Library           SeleniumLibrary
Library           FakerLibrary       locale=en_US

Documentation     This is a test suite for registering a user

*** Variables ***   
${BROWSER}        chrome
${USERNAME}       Name
${LAST_NAME}      LastName
${COMPANY}        Company
${ADDRESS}        Address
${STATE}          State
${CITY}           City
${ZIP_CODE}       ZipCode
${MOBILE_NUMBER}  PhoneNumber
${EMAIL}          Email
${PASSWORD}       Password
${DATE_OF_BIRTH}  DateOfBirth
${INVALID_PASSWORD}  invalidpassword

*** Keywords ***

Open the browser
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Run Keyword If    '${HEADLESS}'=='True'     Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --disable-gpu
    Run Keyword If    '${URL}' == '' or '${URL}' == 'None'    Set Suite Variable    ${URL}    ${URL}
    Log To Console    Getting the URL: ${URL}
    Open Browser    ${URL}    ${BROWSER}    options=${options}
    Maximize Browser Window

On the registration page
    Sleep   2
    Click Element    xpath=//*[@id="header"]/div/div/div/div[2]/div/ul/li[4]/a
    Element Should Be Visible    xpath=//h2[contains(text(), 'New User Signup!')]

Fill the form with valid data
    ${UserName}            FakerLibrary.UserName
    Input Text        xpath=//*[@data-qa="signup-name"]   ${USERNAME}    ${UserName}
    ${Email}           FakerLibrary.Email 
    Input Text        xpath=//*[@data-qa="signup-email"]   ${EMAIL}    ${Email}
    Click Button       xpath=//*[@data-qa="signup-button"]
    Sleep      2
    Element Should Be Visible        xpath=//*[contains(text(),'Enter Account Information')]
    Click Element        xpath=//*[@id="id_gender2"]
    ${Password}        FakerLibrary.Password
    Input Password       xpath=//*[@data-qa="password"]   ${PASSWORD}    ${Password}
    Click Element        xpath=//*[@id="days"] 
    Select From List By Value        xpath=//*[@id="days"]       12
    ${DateOf_Birth}    FakerLibrary.DateOfBirth
    Click Element        xpath=//*[@id="months"]
    Select From List By Value        xpath=//*[@id="months"]     7
    Click Element        xpath=//*[@id="years"]
    Select From List By Value        xpath=//*[@id="years"]     1978
    Input Text        xpath=//*[@data-qa="first_name"]   ${USERNAME}   ${UserName}
    ${Last_Name}       FakerLibrary.LastName
    Input Text        xpath=//*[@data-qa="last_name"]   ${LAST_NAME}  ${Last_Name}
    ${Company}         FakerLibrary.Company
    Input Text        xpath=//*[@data-qa="company"]   ${COMPANY}    ${Company}
    ${Address}         FakerLibrary.Address
    Input Text        xpath=//*[@id="address1"]   ${ADDRESS}    ${Address}
    Select From List By Value        xpath=//*[@id="country"]   United States
    ${State}           FakerLibrary.State
    Input Text        xpath=//*[@id="state"]   ${STATE}    ${State}
    ${City}            FakerLibrary.City
    Input Text        xpath=//*[@id="city"]   ${CITY}    ${City}
    ${Zip_Code}        FakerLibrary.ZipCode
    Input Text        xpath=//*[@id="zipcode"]   ${ZIP_CODE}    ${Zip_Code}
    ${PhoneNumber}     FakerLibrary.PhoneNumber
    Input Text        xpath=//*[@id="mobile_number"]   ${MOBILE_NUMBER}    ${PhoneNumber}
    Click Element        xpath=//*[@data-qa="create-account"]

Valid that the user was registered
    Element Should Be Visible        xpath=//*[contains(text(), 'Account Created!')]
    Click Element        xpath=//*[@data-qa="continue-button"]
    Element Should Be Visible        xpath=//*[contains(text(), 'Logged in as')]

Fill the form with email already registered
    Input Text        xpath=//*[@data-qa="signup-name"]      Mariana   
    Input Text        xpath=//*[@data-qa="signup-email"]     marianasilva@gmail.com
    Click Button       xpath=//*[@data-qa="signup-button"]

Valid message of the email adress already exist
    Sleep        2
    Element Should Be Visible        xpath=//*[contains(text(), 'Email Address already exist!')]
