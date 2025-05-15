***Settings***

Library    SeleniumLibrary

Documentation    This is a test suite for search product page

***Keywords***

Search for a product
    Input Text    xpath=//*[@id="search_product"]    Top
    Click Element    xpath=//*[@id="submit_search"]
    Element Should Be Visible   xpath=/html/body/section[2]/div/div/div[2]/div/h2

Valid the all products are visible
    Element Should Be Visible  xpath=/html/body/section[2]/div/div/div[2]/div