*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Frames
    Select Frame    packageListFrame
    Click Link    org.openqa.selenium
    Unselect Frame
    Select Frame    packageFrame
    Click Link    Alert
    Unselect Frame    
    Select Frame    classFrame
    Click Link    Tree
    Click Link    By.ByClassName
