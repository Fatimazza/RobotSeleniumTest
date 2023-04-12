*** Settings ***
Library         SeleniumLibrary
Variables       ../resources/login_locators.yaml
Variables       ../resources/product_listing_locators.yaml


*** Variables ***
${url}          https://www.saucedemo.com/
${browser}      Chrome


*** Test Cases ***
User Open Product Detail
    [Setup]    Open The Browser
    Input Username
    Input Password
    Click Button Login
    Verify Login Website
    [Teardown]    Close Browser


*** Keywords ***
Open The Browser
    Open Browser    ${url}    ${browser}

Input Username
    Input Text    ${usernameField}    standard_user

Input Password
    Input Text    ${passwordField}    secret_sauce

Click Button Login
    Click Button    ${loginButton}
    Sleep    3s

Verify Login Website
    Page Should Contain    Products
