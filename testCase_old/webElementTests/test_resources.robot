*** Settings ***

Resource    ../../Resources/commons.robot

*** Variables ***

*** Test Cases ***
Chrome Test Case
    Launching Browser   https://gmail.com   chrome

Second Test Case
    Launching Browser   https://google.com  firefox
