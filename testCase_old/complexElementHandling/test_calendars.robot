*** Settings ***

Resource    ../../Resources/commons.robot
Variables    ../../Resources/locators.py
Library     ../../Built_In/customLib.py
Resource    ../../Resources/commons.robot
Variables    ../../Resources/locators.py
#Test Teardown       Ending the test

*** Variables ***

*** Keywords ***
Ending the test
    close browser
Teardown
    Run Keyword If Test Failed    capture screenshot

*** Test Cases ***

Handling Calendar
    [Teardown]    Teardown
    launching browser  https://www.way2automation.com/way2auto_jquery/datepicker.php#load_box    chrome
    select frame    //*[@id="example-1-tab-1"]/div/iframe
    click element    id:datepicker
    #click element    css:.ui-state-default.ui-state-highlight
    print_console
    print_title
    select_month    //*[@id="ui-datepicker-div123"]/div/div/span[1]  January    14
    capture_screenshot