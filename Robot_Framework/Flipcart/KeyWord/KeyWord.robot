*** Settings ***
Library    RPA.Browser.Selenium    auto_close=${False}
Library   RPA.Cloud.Google
Library    String
#Library    ExcelLibrary
Resource    ../variable/variable.robot


*** Keywords ***
Open A Browser Navigate To URL And Initialize Sheet
    Open Browser    ${URL}    ${browser}
    Init Sheets    ${json_file}
    Maximize Browser Window
    
Close Login Window And Search Product  
    Click Button When Visible    ${Login_W}
    #Search A Perticular Product
    Init Google services
Open Mens T-Shirt Section Under Fashion Section
    Wait Until Element Is Visible    ${Fashion}
    Mouse Over    ${Fashion}
    Click Element When Visible    ${M_F}
Scroll Down And Click On T-Shirt
    Wait Until Element Is Visible    ${Shirt}    timeout=10s
    Scroll Element Into View    ${Shirt}
    Click Element    ${Shirt}
Open Size Chart & Get Size Based On Chest Size & Length
    Click Element When Visible    ${Size_Chart}    
    ${row_count}    Get Element Count    ${Row_Elements}
    Log To Console    ${row_count}
    
    FOR    ${Row_Ind}    IN RANGE    1    ${row_count}+1
        ${Row_Data}=    Get Text    xpath://*[@class="_2WObml"]/tbody/tr[${Row_Ind}]/td[2]
        ${Length_Data}=    Get Text    xpath://*[@class="_2WObml"]/tbody/tr[${Row_Ind}]/td[3]
        IF    '${Length_Data}' == '${Length_Size}' and '${Row_Data}' == '${Chest_Size}'
            ${Size}=    Get Text    xpath://*[@class="_2WObml"]/tbody/tr[${Row_Ind}]/td[1]
            Log To Console    \n${Size}\n
        ELSE
            Log To Console    ${Condition_Fail}
        END 
        Run Keyword If    '${Length_Data}' == '${Length_Size}'    Exit For Loop
    END
    Click Element When Visible    ${Close_Chart}
Select Size & Verify Chest Size And Length
    Wait Until Element Is Visible    ${Select_Size}    timeout=10s
    Click Element    ${Select_Size}
    Wait Until Element Is Visible    ${Select_Size}
    Mouse Over    ${Select_Size}
    Should Contain    ${Size_m}    ${Text_m}
Add Product To Cart
    Click Element When Visible    ${Add_To_Cart}
#Search A Perticular Product
    # Open Excel Document    ../Data_Driven/Data.xlsx    1
    # Get Sheet    Sheet1
    # ${data}    Read Excel Cell    1    1
    # Wait Until Element Is Visible    ${Search_box}
    # Input Text    ${Search_box}    ${data}  
    # Click Element    ${Search_Button}
    # Wait Until Element Is Visible    ${product}
    # Page Should Contain Element    ${product}
    # Click Element    ${Home}

Init Google services
    Init Speech To Text   ${json_file}
    ${values}=    Get Sheet Values    ${GSheet_id}    Sheet1!A1:A4    
    Log To Console    ${values}
    FOR  ${Row_index}    IN RANGE    0    4
    ${data}=    Convert to String    ${values['values'][${Row_index}]}
    Log To Console    \n${data}\n
    ${Input_Value}=    Remove String    ${data}    '    [    ]
    Log To Console    \n${Input_Value}\n
    Wait Until Element Is Visible    ${Search_box}
    Input Text    ${Search_box}    ${Input_Value}
    Click Element    ${Search_Button}
    Click Element When Visible    ${Home}
    END
