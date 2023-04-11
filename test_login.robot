*** Settings ***
Library     SeleniumLibrary
# Suite Setup    Open Browser    ${url}    ${browserChrome}
# Suite Teardown    Close Browser


*** Variables ***
${url}                  https://www.saucedemo.com/
${browserChrome}        Chrome
${browserFirefox}       Firefox

# Locators
${usernameField}        //input[@id='user-name']
${passwordField}        //input[@id='password']
${loginButton}          //input[@id='login-button']


*** Test Cases ***
User Login with Valid Data
    [Setup]    Open Browser Chrome
    Input Username
    Input Password
    Click Button Login
    Verify Login Website
    [Teardown]    Close The Browser

User Login with Invalid Data
    [Setup]    Open Browser Chrome
    Input Username Wrong
    Input Password
    Click Button Login
    Verify Wrong User
    [Teardown]    Close The Browser


*** Keywords ***
Open Browser Chrome
    Open Browser    ${url}    ${browserChrome}

Open Browser Firefox
    Open Browser    ${url}    ${browserFirefox}

Close The Browser
    Close Browser

Input Username
    Input Text    ${usernameField}    standard_user

Input Username Wrong
    Input Text    ${usernameField}    random_user

Input Password
    Input Text    ${passwordField}    secret_sauce

Click Button Login
    Click Button    ${loginButton}
    Sleep    1s

Verify Login Website
    Page Should Contain    Products

Verify Wrong User
    Page Should Contain    do not match any user
