*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
TabbedWindowsTest
    open browser    https://demo.automationtesting.in/Windows.html      firefox
    maximize browser window
    click element    xpath://a[@href='http://www.selenium.dev']/button[@class='btn btn-info']

    ${implicittime}=    get selenium implicit wait
    log to console    ${implicittime}

    set selenium implicit wait    10s

    ${implicittime}=    get selenium implicit wait
    log to console    ${implicittime}

    switch window    title=Selenium
    sleep    3s
    click element    xpath://span[contains(text(),'Projects')]

*** Keywords ***