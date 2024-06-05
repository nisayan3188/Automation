*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resources.robot

*** Variables ***
${url}  https://demo.guru99.com/test/newtours/
${browser}  firefox

*** Test Cases ***
KeyWords
    ${PageTitle}=   launchbrowser    ${url}     ${browser}
    input text    name=userName     nafiz
    input text    name=password     imtiaz



