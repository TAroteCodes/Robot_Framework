*** Settings ***
Resource    ../Keyword/Keyword.robot

*** Test Cases ***
Verify The Response API With Get Method
    Given Send API Request & Log Bid Value
Verifying Limit Price Is Same As That Of Bid Price
    [Setup]    Open Browser And Navigate To URL
    Given Navigate to Trading Page
    When Click On Latest Buy Price
    Then Get Limit Price Of Order And Compaire With Bid Price
    [Teardown]    Close Browser