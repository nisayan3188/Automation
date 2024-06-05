*** Settings ***
Library        SeleniumLibrary
Variables       ..//PageObjects/Locators.py


*** Keywords ***
Open My Browser
    [Arguments]    ${SiteURL}      ${Browser}
    open browser    ${SiteURL}      ${Browser}
    MAXIMIZE BROWSER WINDOW

Click Registration Link
    click link    ${link_Reg}

Enter FirstName
    [Arguments]    ${firstName}
    input text    ${txt_firstName}      ${firstName}

Enter LastName
    [Arguments]    ${lastName}
    input text    ${txt_lastName}   ${lastName}

Enter Phone
    [Arguments]    ${phone}
    input text    ${txt_phone}  ${phone}

Enter Email
    [Arguments]    ${email}
    input text    ${txt_email}  ${email}

Enter Address
    [Arguments]    ${address}
    input text    ${txt_add1}   ${address}

Enter City
    [Arguments]    ${city}
    input text    ${txt_city}   ${city}

Enter State
    [Arguments]    ${state}
    input text    ${txt_state}  ${state}

Enter PostalCode
    [Arguments]    ${postalCode}
    input text    ${txt_postalCode}     ${postalCode}

Enter Country
    [Arguments]    ${country}
    select from list by label    ${drp_country}    ${country}

Enter Username
    [Arguments]    ${username}
    input text    ${txt_userName}   ${username}

Enter Password
    [Arguments]    ${password}
    input text    ${txt_password}   ${password}

Enter Confirmed Password
    [Arguments]    ${confpassword}
    input text    ${txt_confirmPassword}    ${confpassword}

Click Submit
    click button    ${btn_submit}

Verify Successful Reg
    page should contain    Thank you for registering

Close my Browser
    close all browsers
