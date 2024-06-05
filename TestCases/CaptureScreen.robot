*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://opensource-demo.orangehrmlive.com/
${browser}  firefox

*** Test Cases ***
LoginTC
    [Documentation]    This test case logs into the OrangeHRM demo site.
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Input Text    name=username    Admin
    Input Text    name=password    admin123

    capture element screenshot    xpath://img[@alt='company-branding']      C:/Development/robot-scripts/Automation/TestCases/Logo.png
    capture page screenshot        C:/Development/robot-scripts/Automation/TestCases/LoginTC.png
    #Click Button    xpath=//button[@type='submit']
    #Sleep    3s
    #Close Browser

*** Keywords ***
