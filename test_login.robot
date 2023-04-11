*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}              https://www.saucedemo.com/
${browserChrome}    Chrome

# Locators
${usernameField}    //input[@id='user-name']
${passwordField}    //input[@id='password']
${loginButton}      //input[@id='login-button']
