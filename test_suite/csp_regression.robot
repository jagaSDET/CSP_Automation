*** Settings ***
Library             SeleniumLibrary
Variables           ../test_bed/variables.py
Variables           ../test_bed/csp_locators.py
Resource    ../resources/csp_keywords.robot
Suite Setup       Opening Browser
Suite Teardown    Closing Browser

*** Test Cases ***
Validating Default Slider Value
    Default Slider Value

Validating Slider Till End Value
    Move Slider Till End Validate Value

Validating Slider After Default Value
    After Slider Default Value

Validating Slider Till Starting Point Value
    Move Slider Backward Validate Value

Validate The Slider Text
    Validate The Text