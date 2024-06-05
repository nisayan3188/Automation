*** Settings ***
Library    SeleniumLibrary
*** Variables ***

*** Test Cases ***
MultipleBrowsersTest
    open browser    https://bing.com      firefox
    maximize browser window


    sleep   3s

    open browser    https://gmail.com        firefox
    maximize browser window

    switch browser    1
    ${title1}=   get title
    log to console    ${title1}

    switch browser    2
    ${title2}=      get title
    log to console    ${title2}

    sleep    3s

    close all browsers
*** Keywords ***
