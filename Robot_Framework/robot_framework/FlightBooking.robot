*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://rahulshettyacademy.com/dropdownsPractise/
${browser}    chrome

*** Test Cases ***
Search_Test
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Flight_Search
    Close Browser
    

*** Keywords ***
Flight_Search
    Sleep    3
    
    Click Element    xpath://input[@id='ctl00_mainContent_rbtnl_Trip_1']
    Sleep    3
    Click Element    xpath://input[@id='ctl00_mainContent_chk_friendsandfamily']
    Sleep    3
    Click Element    xpath://select[@id='ctl00_mainContent_DropDownListCurrency']
    Sleep    3
    Click Element    xpath://option[contains(text(),'USD')]
    Sleep    2
    Click Element    xpath://input[@id='ctl00_mainContent_ddl_originStation1_CTXT']
    Sleep    2
    Click Element    xpath://a[contains(text(),'Pune (PNQ)')]
    Sleep    2
    Click Element    xpath://input[@id='ctl00_mainContent_ddl_destinationStation1_CTXT']
    Sleep    2
    Click Element    xpath://body[1]/form[1]/div[4]/div[2]/div[1]/div[5]/div[2]/div[2]/div[2]/div[3]/div[1]/div[3]/div[1]/div[2]/div[2]/div[1]/table[1]/tbody[1]/tr[2]/td[2]/div[3]/div[1]/div[1]/ul[3]/li[7]/a[1]
    Sleep    2
    Click Element    xpath://tbody/tr[5]/td[7]/a[1]
    Sleep    2
    Click Element    xpath://input[@id='ctl00_mainContent_view_date2']
    Sleep    2
    Click Element    xpath://body[1]/div[1]/div[2]/table[1]/tbody[1]/tr[1]/td[1]/a[1]
    Sleep    2
    Click Element    xpath://div[@id='divpaxinfo']
    Sleep    1
    Click Element    xpath://span[@id='hrefIncAdt']
    Sleep    1
    Click Element    xpath://input[@id='btnclosepaxoption']
    Sleep    2
    Click Element    xpath://select[@id='ctl00_mainContent_DropDownListCurrency']
    Sleep    2
    Click Element    xpath://option[contains(text(),'USD')]
    Sleep    2
    Click Button    xpath://input[@id='ctl00_mainContent_btn_FindFlights']
    Sleep    5
    Handle Alert   
    Sleep    5
    
