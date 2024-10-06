*** Settings ***
Library     RequestsLibrary
Variables   ../test_bed/api_variables.py

*** Keywords ***
Suite Setup Section
    Create Session      Mysession   ${base_url}
