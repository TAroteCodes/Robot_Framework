*** Settings ***
Resource    ../Variable/Variable.robot
Resource    ../Keyword/keyword.robot


Suite Setup    Open Browser    ${URL}   ${browser}
Suite Teardown    Close Browser


*** Test Cases ***
TC1 : Verify whether user able to navigate to the particular product through product list. 
    [Tags]    Sanity
    [Setup]    Log To Console    ${sup}
    Given Maximize Browser Window
    When Search For Product
    Then Get Product
    [Teardown]    Log To Console    ${td}


TC2 : Verify whether user able to get the products which containing Face Id text.
    [Tags]    Smoke
    [Setup]    Log To Console    ${sup1}
    Given Switch Window    ${title}
    When Scroll Into Required Item
    Then Table Itteration
    [Teardown]    Log To Console    ${td1}

