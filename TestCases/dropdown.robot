*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  firefox
${url}  https://www.tutorialspoint.com/selenium/practice/selenium_automation_practice.php

*** Test Cases ***
Handling Dropdowns & Lists
    Open Browser    ${url}  ${browser}
    Maximize Browser Window

    Scroll Element Into View    //select[@id='state']
    Click Element    xpath=//select[@id='state']
    Select From List By Label    id=state    NCR
    Sleep    5
    Select From List By Index    id=state    3
    Sleep    5  # Ensure enough time to observe the changes before closing
    Close Browser

*** Keywords ***
Scroll Element Into View
    [Arguments]    ${locator}
    Execute JavaScript    var element = document.evaluate("${locator}", document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue; element.scrollIntoView({behavior: 'smooth', block: 'center'});
    Sleep    1s  # Add a short delay to ensure the scroll is completed
