*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url1}    https://swisnl.github.io/jQuery-contextMenu/demo.html
${url2}    https://testautomationpractice.blogspot.com/
${browser}  firefox

*** Test Cases ***
MouseOps
    [Documentation]    Test case for right-click and double-click operations.
    # Right Click operations
    Open Browser    ${url1}    ${browser}
    Maximize Browser Window
    #Scroll Element Into View    //span[contains(text(),'right click me')]
    Open Context Menu    xpath://span[contains(text(),'right click me')]
    Sleep    3s

    # Double click
    Go To    ${url2}
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Scroll Element Into View    //button[contains(text(),'Copy Text')]  #for scrolling no need to use xpath:
    Double Click Element    xpath://button[contains(text(),'Copy Text')]
    Sleep    5s


    #Drag & Drop
    go to    http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    drag and drop    id=box6     id=box106
    sleep    5s
    close browser

*** Keywords ***
Scroll Element Into View
    [Arguments]    ${locator}
    [Documentation]    Scrolls the element identified by the locator into view.
    ${js}=    Set Variable    var element = document.evaluate("${locator}", document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue; element.scrollIntoView({behavior: 'smooth', block: 'center'});
    Execute JavaScript    ${js}
    Sleep    1s  # Add a short delay to ensure the scroll is completed
