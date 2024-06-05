*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC1 User reg
    [Tags]    sanity
    log to console    This is user reg test
    log to console    user reg test is done

TC2 Login Test
    [Tags]    sanity
    log to console    This is login test
    log to console    The test is done

TC3 Logout Test
    [Tags]    regression
    log to console    this is logout test
    log to console    logout is over
