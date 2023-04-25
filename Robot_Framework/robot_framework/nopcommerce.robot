*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://demo.nopcommerce.com/
${browser}    chrome

*** Test Cases ***
Login_Test
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Login_To_Application
    Get Title
    
    

*** Keywords ***
Login_To_Application
    Get Title
    Click Link    xpath://a[contains(text(),'Log in')]
    Input Text    xpath://input[@id='Email']   arote.tusha@rediffmail.com
    Input Text    xpath://input[@id='Password']    Tt@987654321
    Sleep    3
    Click Element    xpath://button[contains(text(),'Log in')]
    Sleep    6
    Click Element    xpath://a[contains(text(),'Log out')]