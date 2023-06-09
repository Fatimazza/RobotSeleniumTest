*** Settings ***
Library         SeleniumLibrary
# Suite Setup    Open Browser    ${url}    ${browserChrome}
# Suite Teardown    Close Browser
Variables       ../resources/login_locators.yaml
Variables       ../resources/product_listing_locators.yaml


*** Variables ***
${url}                  https://www.saucedemo.com/
${browser}              Chrome
${browserChrome}        Chrome
${browserFirefox}       Firefox

# Locators
# ${usernameField}    //input[@id='user-name']
# ${passwordField}    //input[@id='password']
# ${loginButton}    //input[@id='login-button']


*** Test Cases ***
User Login with Valid Data
    [Setup]    Open The Browser
    Input Username
    Input Password
    Click Button Login
    Verify Login Website
    Verify First Product Available
    [Teardown]    Close Browser

User Login with Invalid Data
    [Setup]    Open The Browser
    Input Username Wrong
    Input Password
    Click Button Login
    Verify Wrong User
    [Teardown]    Close Browser

User Logout
    [Setup]    Open The Browser
    Input Username
    Input Password
    Click Button Login
    Click Hamburger Menu
    Click Logout Button
    Verify Logout Website
    [Teardown]    Close Browser


*** Keywords ***
Open The Browser
    Open Browser    ${url}    ${browser}

Open Browser Chrome
    Open Browser    ${url}    ${browserChrome}

Open Browser Firefox
    Open Browser    ${url}    ${browserFirefox}

Input Username
    Input Text    ${usernameField}    standard_user

Input Username Wrong
    Input Text    ${usernameField}    random_user

Input Password
    Input Text    ${passwordField}    secret_sauce

Click Button Login
    Click Button    ${loginButton}
    Sleep    3s

Verify Login Website
    Page Should Contain    Products

Verify First Product Available
    Page Should Contain Element    ${firstProduct}

Verify Wrong User
    Page Should Contain    do not match any user

Click Hamburger Menu
    Click Button    ${hamburgerMenu}
    Sleep    3s

Click Logout Button
    Click Link    ${logoutLink}
    Sleep    5s

Verify Logout Website
    Page Should Contain Button    ${loginButton}
