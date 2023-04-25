*** Settings ***
Resource    ../Input/Input_Path.robot


*** Keywords ***
enter the username
    Set Selenium Implicit Wait    10 seconds
    ${username}    Set Variable    name:username
    Wait Until Element Is Enabled    ${username}
    Input Text    ${username}    Admin
enter the password
    Set Selenium Implicit Wait    10 seconds
    ${password}    Set Variable    name:password
    Wait Until Element Is Enabled    ${password}
    Input Password    ${password}    admin123

Navigate to the Admin Menu on the left  
    Click Element When Visible    ${admin}
Click On "Add" button    
    Wait Until Page Contains Element    ${Add}
    Click Element When Visible   ${Add}
Enter the details on the given fields and click on “Save”
    Set Selenium Implicit Wait    10 seconds
    Click Element When Visible    xpath://*[@class="oxd-form-row"]/div/div[1]/div/div[2]/div/div/div[1]
    Sleep    2s
    Press Keys    None    DOWN+DOWN+ENTER
    Input Text    ${Employee_name}    r
    Sleep    4s
    Click Element When Visible    xpath://*[@class="oxd-autocomplete-dropdown --positon-bottom"][1]/div[1]
    Click Element When Visible    xpath://*[@class="oxd-form-row"]/div/div[3]/div/div[2]/div/div/div[1]
    Sleep    2s
    Press Keys    None    DOWN+ENTER
    Input Text    xpath://*[@class="oxd-form-row"]/div/div[4]/div/div[2]/input    ESS12
    Input Text When Element Is Visible    xpath://*[@class="oxd-form-row user-password-row"]/div/div[1]/div/div[2]/input    ${password}
    Input Text When Element Is Visible    xpath://*[@class="oxd-form-row user-password-row"]/div/div[2]/div/div[2]/input    ${password}
    Sleep    1s
    Click Button When Visible    xpath://*[@class="oxd-button oxd-button--medium oxd-button--secondary orangehrm-left-space"]
    Sleep    3s

Input today's date, input time 1 hr from the current time
    Set Selenium Implicit Wait    10 seconds
    Click Element When Visible    ${select_date_in}
    Sleep    1s
    Press Keys    ${select_date_in}    CTRL+A+DELETE
    Sleep    1s
    Input Text    ${select_date_in}    2023-04-03 
    Sleep    1s
    Click Element When Visible    ${Time}
    Sleep    1s
    Press Keys    ${Time}    CTRL+A+DELETE
    Sleep    1s
    Input Text    ${Time}    02:30 PM
    Sleep    1s
    Input Text When Element Is Visible    ${note}    Logging remote work
    Sleep    2s
    Click Button When Visible    ${in}
    Is Alert Present    Successs
    Sleep    3s

Scroll down till the pie charts are visible
    Set Selenium Implicit Wait    10 seconds
    Sleep    3s
    Scroll Element Into View    //body/div/div/div/div/div/div[4]/div[1]/div[2]/div[1]/div[2]/p[1]
    #Scroll Element Into View    //p[normalize-space()='No Employees are on Leave Today']
    Sleep    2s
    Mouse Over    //div[6]//div[1]//div[2]//div[1]//div[1]//canvas[1]        #//body[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[6]/div[1]/div[2]/div[1]/div[1]
    Sleep    2s
    Scroll Element Into View    //body[1]/div[1]/div[1]/div[2]/div[3]/p[1]
    Sleep    2s
    Mouse Over    //body[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[7]/div[1]/div[2]
    Sleep    4s

Input today's date & input time
    Set Selenium Implicit Wait    10 seconds
    Click Element When Visible    ${select_date_out}
    Sleep    1s
    Press Keys    ${select_date_out}    CTRL+A+DELETE
    Sleep    1s
    Input Text    ${select_date_out}    2023-04-03 
    Sleep    1s
    Click Element When Visible    ${Time_Out}
    Sleep    1s
    Press Keys    ${Time_Out}    CTRL+A+DELETE
    Sleep    1s
    Input Text    ${Time_Out}    03:15 PM
    Sleep    1s
    Input Text When Element Is Visible    ${note_out}    Punch Out
    Sleep    2s
    Click Button When Visible    ${out}
    Is Alert Present    Successs
    Sleep    2s