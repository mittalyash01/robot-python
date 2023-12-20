*** Settings ***
Resource    ../Resources/appium_web_commons.robot

Test Teardown   Close Application

*** Test Cases ***
Google Web Test
    Launch Browser
    go to url   http://google.com
    Input Text    //*[@name='q']    Hello Robot
    sleep    2s

