*** Settings ***
Resource    ../../pageObjects/HomePage.resource
Resource    ../../Resources/commons.resource
Resource    ../../pageObjects/NewCarPage.resource
Resource    ../../pageObjects/ToyotaCarPage.resource
Resource    ../../pageObjects/KiaCarPage.resource
Resource    ../../pageObjects/CarBase.resource

Library     DataDriver      ../../Resources/testdata.xlsx  sheet_name=FindNewCarTest
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
    IF    '${brandname}' == 'Toyota'
    Go to Toyota
    ELSE IF     '${brandname}' == 'BMW'
    Go to BMW
    ELSE IF     '${brandname}' == 'Kia'
    Go to Kia
    ELSE
        Log To Console    Invalid car selected
    END

    Verify Car heading    ${carheading}

*** Test Cases ***
Find New ${brandname} Car Test      ${browser}    ${brandname}  ${carheading}


#    #Go to Toyota
#    #Verify Toyota car heading    Toyota Cars
#    #Go to Kia
#    #Verify Car heading      Kia Cars
#    Go to BMW