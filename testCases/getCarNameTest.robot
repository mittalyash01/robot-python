*** Settings ***
Resource    ../pageObjects/HomePage.robot
Resource    ../Resources/commons.robot
Resource    ../pageObjects/NewCarPage.robot
Resource    ../pageObjects/ToyotaCarPage.robot
Resource    ../pageObjects/KiaCarPage.robot
Resource    ../pageObjects/CarBase.robot

Library     DataDriver      ../Resources/testdata.xlsx  sheet_name=FindNewCarTest
Test Template   Find New Cars
Test Teardown   Finish Test Case


*** Variables ***
${testsiteurl}  https://carwale.com/

*** Keywords ***
Find New Cars
    [Arguments]     ${browser}    ${brandname}   ${carheading}
    Launching Browser    ${testsiteurl}    ${browser}
    Maximize Browser Window
    Go to new car page
    IF    "${brandname}" == "Toyota"
    Go to Toyota
    ELSE IF     "${brandname}" == "BMW"
    Go to BMW
    ELSE IF     "${brandname}" == "Kia"
    Go to Kia
    ELSE
        Log To Console    Invalid car selected
    END

    Verify Car heading    ${carheading}
    get car name

*** Test Cases ***
Get Cars Name Test ${brandname}     ${browser}    ${brandname}  ${carheading}
