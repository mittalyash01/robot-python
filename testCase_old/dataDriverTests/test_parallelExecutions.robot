*** Settings ***

Resource    ../../Resources/commons.robot
Variables    ../../Resources/locators.py
Library     ../../Built_In_Custom/customLib.py
Resource    ../../Resources/commons.robot
Variables    ../../Resources/locators.py
Library         DataDriver      ../../Resources/testdata.xlsx   sheetname=Sheet1
Test Template       Handle Any Date
Test Teardown       Ending the test

*** Variables ***

*** Keywords ***
Ending the test
    close browser
Teardown
    Run Keyword If Test Failed      capture screenshot
    Finish Test Case
Handle Any Date
    [Arguments]     ${month}    ${date}
    launching browser  https://www.way2automation.com/way2auto_jquery/datepicker.php#load_box    chrome
    select frame    //*[@id="example-1-tab-1"]/div/iframe
    click element    id:datepicker
    #click element    css:.ui-state-default.ui-state-highlight
    print console
    print title
    select month    //*[@id="ui-datepicker-div123"]/div/div/span[1]  ${month}    ${date}
    capture screenshot
    Element Text Should Be    //*[@id="ui-datepicker-div"]/div/div/span[1]    ${month}

*** Test Cases ***

Handling Calendar       ${month}    ${date}
    [Teardown]    Teardown

#Parallel Execution: pabot --processes 3 --listener allure_robotframework:Allure_Report .\testCase_old