*** Settings ***
Documentation   A test case for sorting a logged-in user's inventory page from A to Z
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

    Select From List By Value    xpath=//select[@class="product_sort_container"]     az

    List Selection Should Be     xpath=//select[@class="product_sort_container"]     Name (A to Z)

    [Teardown]  Close Browser