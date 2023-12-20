*** Settings ***

Resource    ../../Resources/commons.robot
Variables    ../../Resources/locators.py

*** Variables ***


*** Test Cases ***

Handling Links
    @{links}=    get webelements    xpath://a
    ${linkcount}=    get length    ${links}
    log to console    Total links are ${linkcount}
    @{childelements}=    get webelements    xpath://*[@id="www-wikipedia-org"]/div[7]/div[3]//a
    ${childlinkscount}=    get length    ${childelements}
    log to console    Total links in the section are: ${childlinkscount}
     FOR    ${link}    IN    @{childelements}
        #${text}=    get text    ${link}
        ${text}=    get element attribute    ${link}    href
        log to console    ${text}
    END