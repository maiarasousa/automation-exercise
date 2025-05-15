***Settings***

Documentation    This is a test suite for search product page

Resource          ../resources/ProductsDetailsPage.resource
Resource          ../resources/RegisterUserPage.resource
Resource          ../resources/SearchProduct.resource

Suite Setup   Open the browser


***Test Cases***
Search product
    [Tags]    search_product
    Given that home page is visible with successfully
    And click on the products
    When search for a product
    Then valid the all products are visible