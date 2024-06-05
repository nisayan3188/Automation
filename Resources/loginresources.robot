*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}          https://admin-demo.nopcommerce.com
${browser}      firefox

*** Keywords ***
Open My Browser
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Close Browsers
    Close All Browsers

Open Login Page
    Go To    ${url}

Input Username
    [Arguments]     ${username}
    Input Text    id:Email      ${username}

Input Password
    [Arguments]    ${password}
    Input Text    id:Password       ${password}

Click Login Button
    Click Element       xpath://button[contains(text(),'Log in')]

Click Logout Link
    Click Element       xpath://a[contains(text(),'Logout')]

Error Message Should Be Visible
    Page Should Contain    Login was unsuccessful

Dashboard Page Should Be Visible
    Page Should Contain    Dashboard
