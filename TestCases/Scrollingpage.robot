*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ScrollingTest
    Open Browser    https://practice.expandtesting.com/    firefox
    Maximize Browser Window
    set window size    1280     2400

    Sleep    5s

    # Scroll the element into view
    Scroll Element Into View    xpath://a[contains(text(),'Color Wheel')]
    #execute javascript    window.scrollTo(0,3050)
    #element should be visible    xpath://a[contains(text(),'Dynamic ID')]
    #wait until element is visible    xpath://a[contains(text(),'Cypress spies, stubs and clocks')]

    sleep    3s
    #click element       xpath://a[contains(text(),'Cypress spies, stubs and clocks')]
