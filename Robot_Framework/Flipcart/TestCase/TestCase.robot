*** Settings ***
Resource    ../variable/variable.robot
Resource    ../KeyWord/KeyWord.robot

Suite Setup    Open A Browser Navigate To URL And Initialize Sheet
Suite Teardown    Close Browser



*** Test Cases ***

TC 1 : Navigate to Fashion Section And Go To Mens - T Shirt
    [Tags]    Sanity
    Given Close Login Window And Search Product
    # When Open Mens T-Shirt Section Under Fashion Section
    # Then Scroll Down And Click On T-Shirt

# TC 2 : Select Product Size & Add To Cart
#     [Tags]    Smoke
#     Given Switch Window    ${Tab_Title}
#     When Open Size Chart & Get Size Based On Chest Size & Length
#     And Select Size & Verify Chest Size And Length
#     Then Add Product To Cart
    