***Settings***

Documentation    This is a test suite for products details page

Resource          ../resources/ContactUsPage.resource
Resource          ../resources/RegisterUserPage.resource
Resource          ../resources/ProductsDetailsPage.resource

Suite Setup    Open the browser
Suite Teardown    Close Browser

Library    SeleniumLibrary

***Test Cases***
Products details page
    [Tags]    products_details
    Given that home page is visible with successfully
    And click on the products
    When select the product 
    Then validate the product details