*** Settings ***
Documentation   A test case for an unsuccessful login by using a problem user with wrong inventory page
...
...             sdfasdf
...             asdfasdfasdfasf
Library         SeleniumLibrary

*** Test Cases ***

Valid Login

    Open Browser    https://www.saucedemo.com/      chrome   

    Maximize Browser Window

    Page Should Contain Element     login-button

    Input Text      user-name       problem_user

    Input Password      password    secret_sauce

    Click Button    login-button

    Page Should Not Contain Image   src:https://www.saucedemo.com/static/media/sl-404.168b1cce.jpg

    [Teardown]  Close Browser