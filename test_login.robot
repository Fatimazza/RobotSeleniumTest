*** Settings ***
Library             SeleniumLibrary

Suite Setup         Open Browser    ${url}    ${browserChrome}
Suite Teardown      Close Browser


*** Variables ***
${url}              https://www.saucedemo.com/
${browserChrome}    Chrome

# Locators
${usernameField}    //input[@id='user-name']
${passwordField}    //input[@id='password']
${loginButton}      //input[@id='login-button']


*** Keywords ***
Input Username
    Input Text    ${usernameField}    standard_user

Input Password
    Input Text    ${passwordField}    secret_sauce

Click Button Login
    Click Button    ${loginButton}
    Sleep    1s

Verify Login Website
    Page Should Contain    Products
