***Settings***

Documentation    This is a test suite for subscription home page

Resource          ../resources/ProductsDetailsPage.resource
Resource          ../resources/RegisterUserPage.resource
Resource          ../resources/SubscriptionHomePage.resource

Suite Setup    Open the browser

***Test Cases***
Subscription home page
    [Tags]    subscription
    Given that home page is visible with successfully
    And scroll to the subscription
    When fill my email and click button
    Then validate the subscription message