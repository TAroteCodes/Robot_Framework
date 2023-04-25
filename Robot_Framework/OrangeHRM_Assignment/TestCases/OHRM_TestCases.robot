*** Settings ***
Resource    ../Input/Input_Path.robot


*** Test Cases ***
TC_01 : Employee login to OrangeHRM portal
    Open Browser    ${URL}    ${browser}
    Maximize Browser Window
    enter the username
    enter the password
    Click Button    ${login_button}
    Title Should Be    OrangeHRM

TC_02 : Adding Users form Admin portal
    Navigate to the Admin Menu on the left
    Click On "Add" button
    Enter the details on the given fields and click on “Save”

TC_04 : Verifying Dashboard screen
    Click Element When Visible    ${Dashboard}
    Click Element When Visible    ${clock_icon}
    Page Should Contain    Punch In
    Input today's date, input time 1 hr from the current time

TC_05 : Verifying Pie charts in frames
    Click Element When Visible    ${Dashboard}
    Scroll down till the pie charts are visible

TC_06 : Punching out from HRM
    Click Element When Visible    ${Dashboard}
    Click Element When Visible    ${clock_icon}
    Page Should Contain    Punch Out 
    Input today's date & input time

TC_07 : Logout
    Click Element When Visible    ${profile_icon}
    Click Element When Visible    ${logout}
    Does Page Contain    Login