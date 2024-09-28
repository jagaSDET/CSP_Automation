*** Settings ***
Library    SeleniumLibrary
Variables   ../test_bed/csp_locators.py
Variables   ../test_bed/variables.py

*** Keywords ***
Suite Setup Section
    [Documentation]     This keyword is executed before any test cases in the suite.
    ...                 It opens the browser to the specified url and maximizes the window.
    Open Browser    ${slider_url}   ${browser_type}
    Maximize Browser Window

Suite Teardown Section
    [Documentation]     This keyword is executed after all test cases in the suite.
    ...                 It closes the browser.
    Close Browser

Default Slider Value
    [Documentation]     By default slider value
    ${slider_value}     Get WebElement  ${slider_value_xpath}
    Element Text Should Be    ${slider_value}    ${slider_default_value}
    
After Slider Default Value
    [Documentation]     After pefforming the slider action, validate the default value.
    ${slider_xpath}     Get WebElement    ${slider_xpath}
    Drag And Drop By Offset     ${slider_xpath}       -350     0
    ${slider_value_xpath}    Get WebElement    ${slider_value_xpath}
    Element Text Should Be    ${slider_value_xpath}    ${slider_default_value}

Move Slider Till End Validate Value
    [Documentation]     Slider moving till end then validate the value.
    ${slider_xpath}     Get WebElement    ${slider_xpath}
    Drag And Drop By Offset     ${slider_xpath}       ${x_offset_positive_value}     ${y_offset_positive_value}
    ${slider_value_xpath}    Get WebElement    ${slider_value_xpath}
    Element Text Should Be    ${slider_value_xpath}    ${slider_end_value}

Move Slider Backward Validate Value
    [Documentation]     Move the slider to the starting position and validate the value.
    ${slider_xpath}     Get WebElement    ${slider_xpath}
    Drag And Drop By Offset     ${slider_xpath}       ${x_offset_negative_value}      ${y_offset_negative_value}
    ${slider_value_xpath}  Get WebElement    ${slider_value_xpath}
    Element Text Should Be    ${slider_value_xpath}    ${slider_start_v alue}

Validate The Text
    [Documentation]     Validated the displayed "Slider" text.
    Element Text Should Be     ${slider_text_xpath}      ${slider_text}
    Log To Console    ${slider_text}
