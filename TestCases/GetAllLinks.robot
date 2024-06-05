*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
GetAllLinks
    Open Browser    https://demo.guru99.com/test/newtours/    firefox
    Maximize Browser Window

    ${AllLinksCount}=   Get Element Count   xpath://a
    Log To Console    ${AllLinksCount}

    @{LinkItems}=    Create List

    FOR    ${i}    IN RANGE    1    ${AllLinksCount + 1}
        ${linkText}=    Get Text    xpath:(//a)[${i}]
        Log To Console    ${linkText}
        #Append To List    ${LinkItems}    ${linkText}
    END

    Close Browser

*** Keywords ***
