***Settings***

Library    SeleniumLibrary

Documentation    This is a test suite for details products page

***Keywords***

That home page is visible with successfully
    Element Should Be Visible   xpath=//*[@id="header"]/div/div/div/div[2]/div/ul/li[1]/a

Click on the products
    Click Element    xpath=//*[@id="header"]/div/div/div/div[2]/div/ul/li[2]/a
    Element Should Be Visible   xpath=/html/body/section[2]/div/div/div[2]/div/h2
    Element Should Be Visible   xpath=/html/body/section[2]/div/div/div[2]/div/div[2]/div/div[1]/div[1]
    Element Should Be Visible   xpath=/html/body/section[2]/div/div/div[2]/div/div[3]/div/div[1]/div[1]/img

Select the product
    Click Element   xpath=/html/body/section[2]/div/div/div[2]/div/div[2]/div/div[2]/ul/li/a
    Element Should Be Visible   xpath=/html/body/section/div/div/div[1]/div[1]/h2

Validate the product details
    Element Should Be Visible   xpath=/html/body/section/div/div/div[2]/div[2]/div[2]/div/h2
    Element Should Be Visible   xpath=/html/body/section/div/div/div[2]/div[2]/div[2]/div/p[1]
    Element Should Be Visible   xpath=/html/body/section/div/div/div[2]/div[2]/div[2]/div/span/span
    Element Should Be Visible   xpath=/html/body/section/div/div/div[2]/div[2]/div[2]/div/p[2]
    Element Should Be Visible   xpath=/html/body/section/div/div/div[2]/div[2]/div[2]/div/p[3]
    Element Should Be Visible   xpath=/html/body/section/div/div/div[2]/div[2]/div[2]/div/p[4]