*** Settings ***

Resource    ../../Resources/commons.robot
Variables    ../../Resources/locators.py

*** Variables ***


*** Test Cases ***

Handling Dropdown list
    launching browser  https://www.wikipedia.org/    chrome
    #select from list by label    name:language    Eesti
    #select from list by index    name:language    2
    select from list by value   name:language    hi
    @{elements}=    get webelements    xpath://select[@id='searchLanguage']//option
    ${count}=    get length    ${elements}
    log to console    Total values are ${count}
    FOR    ${element}    IN    @{elements}
        #${text}=    get text    ${element}
        ${text}=    get element attribute    ${element}    lang
        log to console    ${text}
    END