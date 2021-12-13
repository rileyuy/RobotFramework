*** Settings ***
Documentation   A test case for an unsuccessful login by using the wrong password for an account
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

    Input Password      password    secret_sos

    Click Button    login-button

    Page Should Contain    Epic sadface: Username and password do not match any user in this service

    [Teardown]  Close Browser