***Settings***

Library    SeleniumLibrary

Documentation    Test case page


***Keywords***
That home page is visible
    Element Should Be Visible       xpath=//*[@id="header"]/div/div/div/div[2]/div/ul/li[1]/a

Click on test case page
    Click Element       xpath=//*[@id="header"]/div/div/div/div[2]/div/ul/li[5]/a

Valid navigated to test cases page successfully
    Element Should Be Visible       xpath=//*[@id="form"]/div/div[1]/div/h2/b