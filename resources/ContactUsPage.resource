*** Settings ***

Library           SeleniumLibrary
Library           FakerLibrary       locale=en_US

Documentation     This is a test suite for contact us page

*** Variables ***
${USERNAME}       Name
${EMAIL}          Email


*** Keywords ***

That home page is visible
    Element Should Be Visible    xpath=//*[@id="header"]/div/div/div/div[2]/div/ul/li[1]/a
    Click Element    xpath=//*[@id="header"]/div/div/div/div[2]/div/ul/li[8]/a

Fill the form of contact us
    Element Should Be Visible    xpath=//*[@id="contact-page"]/div[2]/div[1]/div/h2
    ${UserName}            FakerLibrary.UserName
    Input Text        xpath=//*[@data-qa="name"]   ${USERNAME}    ${UserName}
    ${Email}           FakerLibrary.Email
    Input Text        xpath=//*[@data-qa="email"]   ${EMAIL}    ${Email}
    Input Text        xpath=//*[@data-qa="subject"]       Information about a product
    Input Text        xpath=//*[@data-qa="message"]       Hi! I’d like more information about a product, please.
    Choose File       xpath=//*[@id="contact-us-form"]/div[5]/input       ${CURDIR}/image/Test_Qa.jpg
    Click Button      xpath=//*[@data-qa="submit-button"]
    Handle Alert      action=accept  
        
Verify that the message was sent successfully
    Element Should Be Visible           xpath=//*[contains(text(),'Success! Your details have been submitted successfully.')]

Valid return to home page
    Click Element    xpath=//*[@id="form-section"]/a
    Element Should Be Visible    xpath=/html/body/section[2]/div/div/div[1]/div/h2