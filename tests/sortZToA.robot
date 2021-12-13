*** Settings ***
Documentation   A test case for sorting a logged-in user's inventory page from Z to A
...
...             sdfasdf
...             asdfasdfasdfasf
Library         SeleniumLibrary

*** Test Cases ***

Valid Login

    Open Browser    https://www.saucedemo.com/      chrome   

    Maximize Browser Window

    Page Should Contain Element     login-button

    Input Text      user-name       standard_user

    Input Password      password    secret_sauce

    Click Button    login-button

    Select From List By Value    xpath=//select[@class="product_sort_container"]     za

    List Selection Should Be     xpath=//select[@class="product_sort_container"]     Name (Z to A)

    [Teardown]  Close Browser