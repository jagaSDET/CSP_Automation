*** Settings ***
Library     RequestsLibrary
Library     Collections
Resource    ../resources/csp_api_keywords.robot
Variables   ../test_bed/api_variables.py
Test Setup  Suite Setup Section
Library     String
Library     BuiltIn
Library     SeleniumLibrary

*** Test Cases ***
Get Cust Details
    ${responce}    GET On Session  Mysession   /get

    Should Be Equal As Integers    ${responce.status_code}      200
    Dictionary Should Contain Value     ${responce.json()}      KUMAR

Add New Customer
    &{data}     Create Dictionary   CUST-3=GANESH
    ${resp}     POST On Session     Mysession   /create     json=${data}

    Status Should Be    200     ${resp}
    Dictionary Should Contain Key    ${resp.json()}    CUST-3
    Log To Console      ${resp.json()}      WARN
    Dictionary Should Contain Value    ${resp.json()}    GANESH