*** Settings ***
Library             SeleniumLibrary
Variables           ../test_bed/variables.py
Variables           ../test_bed/csp_locators.py
Resource            ../resources/csp_keywords.robot
Suite Setup         Suite Setup Section
Suite Teardown      Suite Teardown Section

*** Test Cases ***
Validate Default Slider Value
    [Documentation]     Validate the default slider value.
    [Tags]              Regression
    Default Slider Value

Validate Slider Till End Value
    [Documentation]     Validate the slider value till the end.
    [Tags]              Sanity
    Move Slider Till End Validate Value

Validate Slider After Default Value
    [Documentation]     Validating the slider after default value.
    [Tags]              Regression
    After Slider Default Value

Validate Slider Till Starting Point Value
    [Documentation]     Validate the slider value starting position.
    [Tags]              Smoke
    Move Slider Backward Validate Value

Validate The Slider Text
    [Documentation]     Validate the slider text on the page.
    [Tags]              Regression  Sanity
    Validate The Text