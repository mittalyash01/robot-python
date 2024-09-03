*** Settings ***
Library     SeleniumLibrary


**** Keywords ***
Launching Browser
    [Arguments]     ${url}  ${browserName}
        Open Browser    ${url}  ${browserName}
        Set Selenium Implicit Wait    10 seconds
        Log Title

*** Variables ***
#Scalar variables - simple variable - Global scope
${value}    100
${secondvalue}    200
${name}    post
${floatvalue}    10.01
${browser}    chrome
${url}=    http://google.com

*** Test Cases ***
Chrome Test Case
    Launching Browser   https://gmail.com   chrome

Second Test Case
    Launching Browser   https://google.com  firefox
