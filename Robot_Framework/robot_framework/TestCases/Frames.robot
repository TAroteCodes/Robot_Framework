*** Settings ***
Library    SeleniumLibrary
Resource    ../Operations/FrameOps.robot
Test Setup    Open Browser    ${URL}    ${browser}
Test Teardown    Close Browser


*** Variables ***
${URL}    https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html
${browser}    chrome

*** Test Cases ***
Handling_Frames
    Set Selenium Speed    1seconds
    Maximize Browser Window
    Frames 


Handling_Frames2
    Set Selenium Speed    1seconds
    Maximize Browser Window
    Frames 
