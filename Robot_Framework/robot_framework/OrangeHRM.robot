*** Settings ***
Library    RPA.Browser.Selenium    auto_close=${False}    

*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}    chrome

*** Test Cases ***
Login_Test
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Login_to_OHRM
    Logout_from_OHRM
    Close Browser
*** Keywords ***

Login_to_OHRM
    Sleep    3
    ${userbox}    Set Variable    xpath://body/div[@id='app']/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/form[1]/div[1]/div[1]/div[2]/input[1]
    Element Should Be Enabled    ${userbox}
    Element Should Be Visible    ${userbox}
    Input Text    ${userbox}    Admin
    Sleep    3
    Press Keys    ${userbox}    CTRL+A+DELETE
    Sleep    4
    Input Text    xpath://body/div[@id='app']/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/form[1]/div[1]/div[1]/div[2]/input[1]    Admin
    Input Text    xpath://body/div[@id='app']/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/form[1]/div[2]/div[1]/div[2]/input[1]    admin123
    Sleep    2
    Click Button    xpath://body/div[@id='app']/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/form[1]/div[3]/button[1]
    Sleep    3
    Title Should Be    OrangeHRM
Logout_from_OHRM
    Click Element    xpath://header/div[1]/div[2]/ul[1]/li[1]/span[1]/i[1]
    Sleep    2
    Click Element    xpath://a[contains(text(),'Logout')]
    Sleep    3
    
