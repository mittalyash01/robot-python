*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Library     Collections

*** Keywords ***

*** Variables ***
${url}=     http://google.com
${Browser}=     firefox

#List variables - syntax        @{listVariable}=    10  20  Peak

@{city}=    Delhi   Mumbai  Goa

#Dictionary Variables - Key and Value pair - Syntax - &{dictionary}=    key1=value1   key2=value2
${env}=     qa
&{url_dict}=    qa=htt://way2automation.com uat=http:google.com


*** Test Cases ***
Login Sample
    [Documentation]
    Log    ${url}
    Log    ${city}[0] ${city}[2]
    Log    ${url_dict.qa}
    Log    ${url_dict.{env}}
    Open Browser    ${url_dict.{env}}   ${Browser}

 #Execution threough terminal
 # robot -v env:qa -v browser:firefox .\test_variables.robot

## actual
*** Settings ***
Library     SeleniumLibrary


**** Keywords ***


*** Variables ***
#Scalar variables - simple variable - Global scope
${value}    100
${secondvalue}    200
${name}    post
${floatvalue}    10.01
${browser}    chrome
${url}=    http://google.com

#List variables - syntax    @{listVariable}=    10    20    Rahul

@{city}=    Delhi    Mumbai    Goa

#Dictionary Variables - Key and Value pair - Syntax - &{dictionary}=    key=value    key=value
${env}=    uat
&{url_dict}=    qa=http://way2automation.com    uat=http://google.com

*** Test Cases ***
Chrome Test Case
    log    ${value}
    log    ${name}
    log    ${floatvalue}
    log    ${browser}
    log    ${url}
    log    ${${value} + ${secondvalue}}
    log    ${name} ${browser} ${floatvalue}
    log    ${city}[0] ${city}[2]
    log    ${url_dict.${env}}
    open browser    ${url_dict.${env}}    ${browser}
