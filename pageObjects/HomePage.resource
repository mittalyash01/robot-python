*** Settings ***
Library     SeleniumLibrary
Variables   ../Resources/locators.py

*** Keywords ***
Go to new car page
    Mouse Over    ${newcar_xpath}
    Click Element    ${findnewcar_xpath}
    Element Text Should Be    ${newcar_header_xpath}    New Cars

##Find new cars


##Find old cars


