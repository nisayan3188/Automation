*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
HandlingAlerts
    open browser    https://testautomationpractice.blogspot.com/
    click element    xpath://button[contains(text(),'Confirm Box')]     #Open Alerts

    sleep    3s
    #handle alert    accept
    #handle alert    dismiss
    #handle alert    leave
    alert should not be present     Press a button!
    #close browser

*** Keywords ***
