*** Settings ***

Resource    ../Tests/webElementTests/test_registration.robot
Resource    ../../Resources/commons.robot
Variables    ../../Resources/locators.py

*** Variables ***


*** Test Cases ***

Registration form test
    Filling Registration form
    click link    link:ENTER TO THE TESTING WEBSITE
    click element    xpath://*[@id="wrapper"]/div/div/div[5]/ul/li/a/figure
    @{windowHandles}=    get window handles
    log to console    ${windowHandles}
    switch window    ${windowHandles}[1]
    input text    name:name    Rahul
    close window
    switch window    ${windowHandles}[0]
    close window
    #Finish Test Case