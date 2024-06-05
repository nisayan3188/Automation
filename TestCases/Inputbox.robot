*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  firefox
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
TestingInputBox
    open browser    ${url}  ${browser}
    maximize browser window
    title should be    nopCommerce demo store
    click link    xpath://a[contains(text(),'Log in')]
    ${"email_txt"}  set variable    xpath://input[@id='Email']

    element should be visible    ${"email_txt"}
    element should be enabled    ${"email_txt"}

    input text    ${"email_txt"}    sayan3188@gmail.com
    sleep   5s
    clear element text  ${"email_txt"}
    sleep    3
    close browser



*** Keywords ***
