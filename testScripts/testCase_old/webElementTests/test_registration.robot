*** Settings ***
Resource    ../../Resources/commons.robot
Variables    ../../Resources/locators.py

*** Variables ***

*** Test Cases ***
Filling Registration form
    Launching Browser  https://www.way2automation.com/way2auto_jquery/index.php    chrome
    maximize browser window
    Input Text    ${name}    Yash Mittal
    Input Text    ${phone}    8923848274

    ${random}=    evaluate    random.randint(5000,999999)
    ${emailnew}=    catenate    ${random}    __2_ @way2automation.com
    ${email_id}=    evaluate    '${emailnew}'.replace(' ','_')

    input text    ${email}    ${email_id}
    select from list by label    ${country}    Iceland
    input text    ${city}    Delhi
    input text    ${username}    rahularora1423
    input text    ${password}    askjdbfskjdfs
    click button    ${submitBtn}