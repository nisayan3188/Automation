*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  firefox
${url}  https://www.techlistic.com/p/selenium-practice-form.html

*** Test Cases ***
Handling Dropdowns & Lists
    Open Browser    ${url}  ${browser}
    Maximize Browser Window

    # Remove the obstructing advertisement
    Remove Obstructing Element    //span[@id='div-gpt-ad-techlistic_com-medrectangle-2-0']

    Scroll Element Into View    //select[@id='selenium_commands']
    Select From List By Label    id=selenium_commands    Switch Commands
    Sleep    3s
    Select From List By Label    id=selenium_commands    WebElement Commands
    Sleep    3s
    Unselect From List By Label    selenium_commands    Switch Commands
    Sleep    3s
    Close Browser

*** Keywords ***
Scroll Element Into View
    [Arguments]    ${locator}
    Execute JavaScript    var element = document.evaluate("${locator}", document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue; element.scrollIntoView({behavior: 'smooth', block: 'center'});
    Sleep    1s  # Add a short delay to ensure the scroll is completed

Remove Obstructing Element
    [Arguments]    ${locator}
    Execute JavaScript    var element = document.evaluate("${locator}", document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue; element.parentNode.removeChild(element);
