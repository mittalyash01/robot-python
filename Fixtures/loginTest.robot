*** Settings ***

Suite Setup     Log To Console    create DB connection
Suite Teardown      Log To Console    close DB connection
Test Setup  Log To Console    Launching Browser
Test Teardown   Log To Console    Closing Browser

*** Test Cases ***

Login Test
    Log To Console    Executing Login Test

User reg Test
    Log To Console    Executing User reg Test

Image upload Test
    Log To Console    Executing Image upload Test