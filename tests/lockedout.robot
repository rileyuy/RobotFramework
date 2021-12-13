*** Settings ***
Documentation   A test case for an unsuccessful login by using a locked-out account
...
...             sdfasdf
...             asdfasdfasdfasf
Library         SeleniumLibrary

*** Test Cases ***

Valid Login

    Open Browser    https://www.saucedemo.com/      chrome   

    Maximize Browser Window

    Page Should Contain Element     login-button

    Input Text      user-name       locked_out_user

    Input Password      password    secret_sauce

    Click Button    login-button

    Page Should Contain    Epic sadface: Sorry, this user has been locked out.

    [Teardown]  Close Browser