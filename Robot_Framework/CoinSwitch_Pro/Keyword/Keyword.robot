*** Settings ***
Library    RequestsLibrary
Library    RPA.JSON
Library    RPA.Browser.Selenium    auto_close=${False}
Resource    ../Variables/Variables.robot

*** Keywords ***
Send API Request & Log Bid Value
    Create Session    coinswitch    ${base_url}
    ${response}=    Get Request    coinswitch    /api/v1/realtime-rates/depth?symbol=btc,inr&exchange=csx
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}
    ${json_response}=    To Json    ${response.content}
    ${Bid_Value}=    Get value from JSON    ${json_response}    data.bids[0][0]
    Log To Console    \n${Bid_Value}
    Set Global Variable    ${Bid_Value}
Open Browser And Navigate To URL
    Open Browser    ${base_url}    ${Browser}
    Maximize Browser Window
Navigate to Trading Page
    Wait Until Element Is Visible    ${Tread_Now_Button}
    Click Button    ${Tread_Now_Button}
Click On Latest Buy Price
    Click Element When Visible    ${Skip_All_Button}
    Click Element When Visible    ${Done_Button}
    Click Element When Visible    ${Latest_Buy_Price}
Get Limit Price Of Order And Compaire With Bid Price
    Scroll Element Into View    ${Limit_Price}
    ${Limit_Price_Value}=    Get Value    ${Limit_Price_Val}
    Log To Console    \n${Limit_Price_Value}\n
    Should Be Equal    ${Bid_Value}    ${Limit_Price_Value}
    
    
    
    