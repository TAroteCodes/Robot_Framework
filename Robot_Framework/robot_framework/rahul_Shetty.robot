*** Settings ***
Library    RPA.Browser.Selenium    auto_close=${False}
Library    AppiumLibrary
Library    RPA.JavaAccessBridge
*** Variables ***
${url}    https://rahulshettyacademy.com/AutomationPractice/
${browser}    chrome

*** Test Cases ***
Select radio buttons
    Open Browser    ${url}    ${browser}
    Set Selenium Speed    1seconds
    Maximize Browser Window
    Click Element When Visible    xpath://*[@class="left-align"][1]/fieldset/label/input[1]  #select radio button 1

    Click Element When Visible    xpath://*[@class="block large-row-spacer"][1]/div[1]/fieldset/label[2]/input  #select second radio button

    Click Element When Visible    xpath://*[@class="block large-row-spacer"][1]/div[1]/fieldset/label[3]/input  #select third radio button
Suggestion
    Input Text When Element Is Visible    xpath://*[@class="block large-row-spacer"][1]/div[2]/fieldset/input    ind
    Click Element When Visible    xpath://*[@class="ui-menu ui-widget ui-widget-content ui-autocomplete ui-front"]/li[2]
DropDown
    Click Element When Visible    id:dropdown-class-example
    Click Element When Visible    xpath://*[@id="dropdown-class-example"]/option[3]
Checkbox
    Select Checkbox    id:checkBoxOption1
    Click Element When Visible    id:checkBoxOption3
Switch_window
    Click Element When Visible    id:openwindow
    Sleep    1
    Switch window    NEW
    Sleep    1
    Close Window
    Switch Window    MAIN
Switch_Tab
    Click Button When Visible    id:opentab
    Sleep    1
    


    


*** Keywords ***
Select_Radio_Button
    

   