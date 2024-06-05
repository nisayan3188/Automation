*** Settings ***
Library    SeleniumLibrary
Variables  ../PageObjects/Locators.py

*** Keywords ***
Open My Browser
    [Arguments]    ${SiteURL}    ${Browser}
    Open Browser    ${SiteURL}    ${Browser}
    Maximize Browser Window

Enter UserName
    [Arguments]    ${username}
    Input Text    ${txt_loginUsername}    ${username}

Enter Password
    [Arguments]    ${password}
    Input Text    ${txt_loginPassword}    ${password}

Click SignIn
    Click Button    ${btn_signIn}

Verify Successful Login
    Title Should Be    Login: Mercury Tours

Close My Browsers
    Close All Browsers

