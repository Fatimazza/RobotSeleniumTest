*** Settings ***
Library         SeleniumLibrary
Variables       ../resources/login_locators.yaml
Variables       ../resources/product_listing_locators.yaml
Variables       ../resources/product_detail_locators.yaml


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
    Click Third Product
    Verify Third Product Detail
    [Teardown]    Close Browser

User Add Product to Cart
    [Setup]    Open The Browser
    Input Username
    Input Password
    Click Button Login
    Click Third Product
    Add Product to Cart
    Open Cart Page
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

Click Third Product
    Click Element    ${thirdProduct}
    Sleep    3s

Verify Third Product Detail
    Element Text Should Be    ${productDetailName}    Sauce Labs Bolt T-Shirt
    Element Should Contain
    ...    ${productDetailDesc}
    ...    Get your testing superhero on with the Sauce Labs bolt T-shirt
    Element Text Should Be    ${productDetailPrice}    $15.99

Add Product to Cart
    Click Element    ${addToCartButton}
    Sleep    3s

Open Cart Page
    Click Element    ${shoppingCartButton}
    Sleep    3s
