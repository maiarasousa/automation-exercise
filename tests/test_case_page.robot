***Settings***

Documentation    Test case page

Resource          ../resources/RegisterUserPage.resource
Resource          ../resources/TestCasePage.resource

Suite Setup    Open the browser

***Test Cases***
Test case page
    [Tags]    test_case_page
    Given that home page is visible
    When click on test case page
    Then valid navigated to test cases page successfully
