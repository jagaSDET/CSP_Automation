*** Settings ***
Library    SeleniumLibrary
Variables   ../test_bed/csp_locators.py
Variables   ../test_bed/variables.py

*** Keywords ***
Opening Browser
    Open Browser    ${slider_url}   ${browser_type}
    Maximize Browser Window
    Sleep   5s

Closing Browser
    Close Browser

Default Slider Value
    ${slider_value}    Get WebElement  ${slider_value_xpath}
    Element Text Should Be    ${slider_value}    ${slider_default_value}
    Sleep    2s
    
After Slider Default Value
    ${slider_xpath}    Get WebElement    ${slider_xpath}
    Drag And Drop By Offset     ${slider_xpath}       -350     0
    ${slider_value_xpath}    Get WebElement    ${slider_value_xpath}
    Element Text Should Be    ${slider_value_xpath}    ${slider_default_value}
    Sleep    2s

Move Slider Till End Validate Value
    ${slider_xpath}    Get WebElement    ${slider_xpath}
    Drag And Drop By Offset     ${slider_xpath}       ${x_offset_positive_value}     ${y_offset_positive_value}
    ${slider_value_xpath}    Get WebElement    ${slider_value_xpath}
    Element Text Should Be    ${slider_value_xpath}    ${slider_end_value}
    Sleep   2s

Move Slider Backward Validate Value
    ${slider_xpath}    Get WebElement    ${slider_xpath}
    Drag And Drop By Offset     ${slider_xpath}       ${x_offset_negative_value}      ${y_offset_negative_value}
    ${slider_value_xpath}  Get WebElement    ${slider_value_xpath}
    Element Text Should Be    ${slider_value_xpath}    ${slider_start_value}
    Sleep   2s

Validate The Text
    Element Text Should Be     ${slider_text_xpath}      ${slider_text}
    Log To Console    ${slider_text}
    Sleep   2s
