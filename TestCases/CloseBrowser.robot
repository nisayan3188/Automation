*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
CloseBrowserAll
    open browser    https://demowebshop.tricentis.com/register      firefox
    maximize browser window

    open browser    https://demowebshop.tricentis.com/register      chrome
    maximize browser window

    #close browser
    close all browsers
*** Keywords ***
