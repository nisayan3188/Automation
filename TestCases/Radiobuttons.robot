*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  firefox
${url}  https://www.techlistic.com/p/selenium-practice-form.html

*** Test Cases ***
Testing Radio Buttons & Check Boxes
    open browser    ${url}   ${browser}
    maximize browser window

    #Selecting Radio Buttons
    #scroll element into view    xpath://b[contains(text(),'Gender')]
    #Execute JavaScript     Window.scroll(0,-100)
    #wait until page contains    AUTOMATION PRACTICE FORM
    select radio button     sex     Male
    select radio button     exp     2
    select checkbox     Automation Tester
    select checkbox     Selenium Webdriver
    #sleep     20s
    close browser
*** Keywords ***
