*** Settings ***
Library    SeleniumLibrary
Resource    ..//Resources/RegistrationKeyWords.robot

*** Variables ***
${Browser}      headlessfirefox
${SiteURL}      https://demo.guru99.com/test/newtours

*** Test Cases ***
Registrationtest
    Open My Browser     ${SiteURL}      ${Browser}
    Click Registration Link
    Enter FirstName    Nafiz
    Enter LastName    Imtiaz
    Enter Phone    0199212211
    Enter Email    nafiz@busy.com
    Enter Address    IT park
    Enter City       Jashore
    Enter State      Khulna
    Enter PostalCode    1912
    Enter Country       CANADA
    Enter Username    sayan3188
    Enter Password    123444
    Enter Confirmed Password    123444
    Click Submit
    Verify Successful Reg
    Close my Browser


