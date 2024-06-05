*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/LoginKeyWords.robot

*** Variables ***
${Browser}    firefox
${SiteURL}    https://demo.guru99.com/test/newtours/
${user}       tutorial
${pwd}        tutorial

*** Test Cases ***
LoginTest
    Open My Browser    ${SiteURL}    ${Browser}
    Enter UserName     ${user}
    Enter Password     ${pwd}
    Click SignIn
    Sleep    3s
    Verify Successful Login
    Close My Browsers
