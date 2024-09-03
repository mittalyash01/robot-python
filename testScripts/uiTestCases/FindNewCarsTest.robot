*** Settings ***
Resource    ../../pageObjects/HomePage.resource
Resource    ../../Resources/commons.resource
Resource    ../../pageObjects/NewCarPage.resource
Resource    ../../pageObjects/ToyotaCarPage.resource
Resource    ../../pageObjects/CarBase.resource
Suite Setup     Log To Console    Started
Suite Teardown   Finish Test Case


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