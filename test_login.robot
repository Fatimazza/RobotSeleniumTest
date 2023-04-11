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
