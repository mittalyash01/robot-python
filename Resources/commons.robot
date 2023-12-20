*** Settings ***
Library     SeleniumLibrary


**** Keywords ***
Launching Browser
    [Arguments]     ${url}  ${browserName}
        Open Browser    ${url}  ${browserName}
        Set Selenium Implicit Wait    20 seconds
        Log Title

Finish Test Case
    Log    Ending the test case
    Close Browser
