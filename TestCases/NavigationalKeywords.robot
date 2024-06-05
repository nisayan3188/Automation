*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
NavigationTest
    open browser    https://www.google.com/     chrome
    ${loc}=     get location
    log to console    ${loc}

    sleep    3s

    go to    https://www.bing.com/
    ${loc}=     get location
    log to console    ${loc}

    sleep    3s

    go back
    ${loc}=     get location
    log to console    ${loc}



*** Keywords ***
