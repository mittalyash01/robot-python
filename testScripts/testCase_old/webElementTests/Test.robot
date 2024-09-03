*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Library     Collections

*** Keywords ***

*** Variables ***

*** Test Cases ***
Login Sample
    [Documentation]
    Log    Login Test Case
    Open Browser    https://way2automation.com  firefox
    Set Selenium Implicit Wait    10 seconds
    Log Title
    #$(text}=        get text    //*[@id="view_container"]
    #Sleep    3
    #Wait Until Keyword Succeeds    5x    2s    click element    //*[@id="view_container"]/div
    Close Browser


Second Test Case
    Log    This is second test case
