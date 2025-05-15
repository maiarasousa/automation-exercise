***Settings***

Library    SeleniumLibrary

Documentation    This is a test suite for subscription home page

***Variables***

${EMAIL}        Email

***Keywords***

Scroll to the subscription
    Scroll Element Into View   xpath=//*[@id="susbscribe_email"]
    Element Should Be Visible   xpath=//*[@id="footer"]/div[1]/div/div/div[2]/div/h2

Fill my email and click button

    ${Email}           FakerLibrary.Email 
    Input Text   xpath=//*[@id="susbscribe_email"]   ${EMAIL}      ${Email}
    Click Element   xpath=//*[@id="subscribe"]

Validate the subscription message
    Wait Until Element Is Visible   xpath=//*[@id="success-subscribe"]/div