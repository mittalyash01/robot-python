*** Settings ***
Library     RequestsLibrary

*** Variables ***
${base_url}=    http://localhost:8080/api/users

*** Test Cases ***
Sending GET request
    ${resp}=    GET     ${base_url}  expected_status=200
    Log To Console    ${resp}
    Status Should Be    OK  ${resp}


Sending GET and Response Data
    ${resp}=    GET     ${base_url}  expected_status=200
    Log To Console    ${resp.json()}


Creating session and sending GET request
    Create Session    usedetails    ${base_url}
    ${resp_data}=   GET On Session  userdetails     ${base_url}
    #Log To Console    ${resp_data.json()}
    Log To Console    ${resp_data.json()[0]}
    Log To Console    ${resp_data.json()[0]['firstName']}
    Should Be Equal    ${resp_data.json()[0]['email']}    test@test.com

Sending POST request
    ${body}=    Create Dictionary   email=anyuser@user.com  firstName=Any   lastName=User
    Create Session    usedetails    ${base_url}
    ${resp_data}=   POST On Session  userdetails     ${base_url}    json=${body}    expected_status=201
    Log To Console    ${resp_data}

Sending DELETE request
    Create Session    usedetails    ${base_url}
    ${resp_data}=   DELETE On Session  userdetails     ${base_url}/23
    ${resp}=    GET     ${base_url}/23  expected_status=401
    Log To Console    ${resp.json()}
