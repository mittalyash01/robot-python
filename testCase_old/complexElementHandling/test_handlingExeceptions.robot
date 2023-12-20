*** Settings ***
Documentation       Learning Try and Except - Exception Handling in Robot framework
Library    SeleniumLibrary

*** Test Cases ***

Try / Except - Basic Syntax
    TRY
        log to console    Hello World
        Fail
        Log To Console    doing something
    EXCEPT
    Log To Console    Inside Except Block
        
    END

Try / Except - with Message to be reported
    TRY
        log to console    Hello World
        Fail    ERROR OCCURED
        Log To Console    doing something
    EXCEPT
        Log To Console    Inside Except Block
    ELSE
        Log To Console    No errors in test case

    FINALLY
           Log To Console    Finally - This block is always executed
     END
     
Selenium INtegration Test
        TRY
            Open Browser    https://gmail.com   chrome
            Input Text      id:identifier2Id    test@test.com
            Close Browser
        EXCEPT
            Close Browser
            Fail
        END