*** Settings ***
Library    SeleniumLibrary

Suite Setup     log to console      Opening Browser
Suite Teardown    log to console        Closing Browser

Test Setup    log to console        Login to Application
Task Teardown    log to console     Logout from Application

*** Test Cases ***
TC1 Go to office
    log to console    Going to office

TC2 Take Dinner
    log to console    Take Dinner

TC3 Go Home
    log to console    Go Home Asap