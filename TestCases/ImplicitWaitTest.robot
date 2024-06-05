*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://demowebshop.tricentis.com/register
${browser}      firefox

*** Test Cases ***
RegUser
    open browser    ${url}  ${browser}
    maximize browser window

    ${implicittime}=    get selenium implicit wait
    log to console    ${implicittime}

    set selenium implicit wait    10s

    ${implicittime}=    get selenium implicit wait
    log to console    ${implicittime}

    select radio button    Gender   F
    input text    name:FirstName    Nafiz
    input text    name:LastName     Imtiaz
    input text    name:Email    abc@yahoo.com
    input text    name:Password     12345678
    input text    name:ConfirmPassword      12345678
    close browser


*** Keywords ***
