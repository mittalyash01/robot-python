*** Settings ***
Library     SeleniumLibrary
Variables   ../Resources/locators.py

*** Keywords ***
Go to Toyota
    Click Element    ${toyotacar_xpath}

Go to Kia
    Click Element    ${Kiacar_xpath}

Go to BMW
    Click Element    ${BMWcar_xpath}

Go to Maruti
    Click Element    ${Maruticar_xpath}

Go to Tata
    Click Element    ${Tatacar_xpath}