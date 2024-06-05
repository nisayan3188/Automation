*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  firefox
${url}  https://demo.nopcommerce.com/
*** Test Cases ***
LoginTest
    open browser    ${url}    ${browser}
    #open browser    https://demo.nopcommerce.com    chrome
    loginToApplication
    close browser



*** Keywords ***
loginToApplication
    click link    xpath://a[contains(text(),'Log in')]
    input text    xpath://input[@id='Email']   sayan3188@gmail.com
    input text    xpath://input[@id='Password']     12345678
    click button    xpath://button[contains(text(),'Log in')]
    sleep    20s
