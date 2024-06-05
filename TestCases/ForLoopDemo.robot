*** Settings ***

*** Variables ***

*** Test Cases ***
#ForLoop1
    #FOR    ${i}     IN RANGE    1   10
    #log to console    ${i}
    #END

*** Test Cases ***
ForLoop2
    ${items}    Create List    Nafiz    Sayed    Rafi    Sazzad
    FOR    ${i}    IN    ${items}
        Log To Console    ${i}
        Exit For Loop If    ${i} == 'Sayed'
    END


*** Keywords ***
