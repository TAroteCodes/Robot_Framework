*** Settings ***
Resource    ../Variable/Variable.robot

*** Keywords ***
Search For Product
    Wait For Element Visibility And Input The Text  ${search_box}    ${productname}
    Wait For Element And Click    ${search_button}
    
Get Product
    Scroll Element Into View    ${item}
    Wait For Element And Click    ${item}

Scroll Into Required Item
    Wait Until Element Is Visible    ${table_content}
    Scroll Element Into View    ${table_content}

Table Itteration
    ${row_count}=  Get Element Count    ${rc}
    ${colum_count}=  Get Element Count    ${cc}
    Log To Console    ${row_count}
    Log To Console    ${colum_count}
    FOR   ${rowIndex}  IN RANGE    1  ${row_count} + 1
        ${rowHeader}=    Get Text  xpath://table[@class='a-bordered a-horizontal-stripes a-spacing-micro a-size-small ucc-comparison-table']//tr[${rowIndex}]//td[1] 
        Run Keyword If  '${rowHeader}' == '${Chip}'  Exit For Loop
    END
    Log To Console    ${rowIndex}
    FOR   ${colIndex}  IN RANGE    2  ${colum_count} + 1
        ${curText}=    Get Text   //table[@class='a-bordered a-horizontal-stripes a-spacing-micro a-size-small ucc-comparison-table']//tr[${rowIndex}]/td[${colIndex}]
        IF    "${curText}" == "${expecteddata}"     
            ${phone}=   Get Text    //table[@class='a-bordered a-horizontal-stripes a-spacing-micro a-size-small ucc-comparison-table']//tr[${rowIndex}]/td[${colIndex}]
            Log To Console    ${colIndex}
            Log To Console  ${phone}
            Log To Console    ${curText}
        ELSE
            Log To Console  ${curText}
        END 
        Run Keyword If  '${curText}' == '${expecteddata}'  Exit For Loop
    END
   
Wait For Element Visibility And Input The Text
    [Arguments]    ${element}    ${element2}
    Wait Until Element Is Visible    ${element}    timeout=10s
    Input Text    ${element}    ${element2}

Wait For Element And Click
    [Arguments]    ${element1}
    Wait Until Element Is Visible    ${element1}    timeout=10s
    Click Element    ${element1}