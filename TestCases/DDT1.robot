*** Settings ***
Library    SeleniumLibrary
Resource    C:/Development/robot-scripts/Automation/Resources/loginresources.robot

Suite Setup     Open My Browser
Suite Teardown  Close Browsers
Test Template   Invalid Login

*** Test Cases ***
| Test Name              | username        | password    |
| Right user empty pass  | nafiz@abc.com   | ${EMPTY}    |
| Right user wrong pass  | nafiz@abc.com   | xyz         |
| Wrong user right pass  | naf@abc.com     | admin       |
| Wrong user empty pass  | naf@abc.com     | ${EMPTY}    |
| Wrong user wrong pass  | naf@abc.com     | xyz         |

*** Keywords ***
Invalid Login
    [Arguments]     ${username}     ${password}
    [Tags]          low-severity    # Apply tags directly within the keyword if necessary
    Input Username      ${username}
    Input Password      ${password}
    Click Login Button
    #Error Message Should Be Visible
