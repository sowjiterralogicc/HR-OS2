*** Settings ***
Library    SeleniumLibrary
Resource    ../Variables/common_varibales.robot
Resource    ../Variables/para_registration_form_variables.robot
Resource    ../Keywords/common_keywords.robot


*** Keywords ***
Launch the Para Registration Form Website
    Lanuch Browser    ${para_registration_portal}
Fill with Valid Data Into Appropriate Fields
    Input Text    ${firstname_xpath}         ${firstname}
    Input Text    ${lastname_xpath}          ${lastname}
    Input Text    ${address_xpath}           ${address}
    Input Text    ${city_xpath}              ${city}
    Input Text    ${state_xpath}             ${state}
    Input Text    ${postalcode_xpath}        ${postalcode}
    Input Text    ${phone_xpath}             ${phone}
    Input Text    ${ssn_xpath}               ${ssn}
    Input Text    ${username_xpath}          ${username}
    Input Text    ${password_xpath}          ${password}
    Input Text    ${confirm_password_xpath}   ${confirm_password}
Click on Register Button
    Click On Button    ${register_button_xpath}

Veriify Registration Page show successful Message

    Wait Until Page Contains Element    ${registration_message_xpath}   timeout=10s
    ${word}=    Get Text       ${register_button_xpath}
    Run Keyword If    "Welcome" in "${word}"    Log    It's navigated to the home page
   [Teardown]    Close Browser

Close Browser windows
    Close All Browsers






