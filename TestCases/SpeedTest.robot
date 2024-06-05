*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://demowebshop.tricentis.com/register
${browser}      firefox

*** Test Cases ***
RegUser

    ${speed}=   get selenium speed
    log to console    ${speed}
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed    3 seconds

    select radio button    Gender   F
    input text    name:FirstName    Nafiz
    input text    name:LastName     Imtiaz
    input text    name:Email    abc@yahoo.com
    input text    name:Password     12345678
    input text    name:ConfirmPassword      12345678

    ${speed}=   get selenium speed
    log to console    ${speed}

    close browser


*** Keywords ***
