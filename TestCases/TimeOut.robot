*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://demowebshop.tricentis.com/register
${browser}      firefox

*** Test Cases ***
RegUser
    open browser    ${url}  ${browser}
    maximize browser window
    ${time}=    get selenium timeout
    log to console    ${time}
    set selenium timeout    10s
    wait until page contains    Register
    select radio button    Gender   F
    input text    name:FirstName    Nafiz
    input text    name:LastName     Imtiaz
    input text    name:Email    abc@yahoo.com
    input text    name:Password     12345678
    input text    name:ConfirmPassword      12345678
    close browser


*** Keywords ***
