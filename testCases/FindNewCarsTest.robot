*** Settings ***
Resource    ../pageObjects/HomePage.robot
Resource    ../Resources/commons.robot
Resource    ../pageObjects/NewCarPage.robot
Resource    ../pageObjects/ToyotaCarPage.robot
Resource    ../pageObjects/CarBase.robot
Test Teardown   Finish Test Case


*** Variables ***
${testsiteurl}  https://carwale.com/

*** Test Cases ***
Find New Cars Test
    Launching Browser    ${testsiteurl}    chrome
    Maximize Browser Window
    Go to new car page
    #Go to Toyota
    #Verify Toyota car heading    Toyota Cars
    #Go to Kia
    #Verify Car heading      Kia Cars
    Go to BMW
    Verify Car heading    BMW Cars

