*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BASE_URL}       https://opensource-demo.orangehrmlive.com/web/index.php
${BROWSER}        chrome
${USERNAME}       Admin
${PASSWORD}       admin123
${TIMEOUT}        10s

*** Keywords ***
Open Browser And Go To Login
    Open Browser    ${BASE_URL}/auth/login    ${BROWSER}
    Maximize Browser Window
    Set Selenium Implicit Wait    ${TIMEOUT}

Login With Valid Credentials
    Input Text    name:username    ${USERNAME}
    Input Text    name:password    ${PASSWORD}
    Click Button    xpath=//button[@type='submit']
    Wait Until Element Is Visible    xpath=//h6[contains(@class,'oxd-topbar-header-breadcrumb-module')]    ${TIMEOUT}

Logout
    Click Element    xpath=//span[@class='oxd-userdropdown-tab']
    Wait Until Element Is Visible    xpath=//a[text()='Logout']    ${TIMEOUT}
    Click Element    xpath=//a[text()='Logout']
    Wait Until Element Is Visible    name:username    ${TIMEOUT}

Close Test Browser
    Close Browser
