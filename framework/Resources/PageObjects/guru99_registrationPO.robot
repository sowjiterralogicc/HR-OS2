*** Settings ***

Library    SeleniumLibrary
Resource    ../Keywords/common_keywords.robot
Resource    ../Variables/common_varibales.robot
Resource    ../Variables/guru99_registartion_variables.robot
*** Keywords ***
Launch the registration form webpage

    Lanuch Browser    ${guru99_registation_portal}

Fill all fields with valid data into relevant fields
    Input Text    ${firstname_xath}          ${firstname}
    Input Text    ${lastname_xpath}          ${lastname}
    Input Text    ${phone_xpath}             ${phone}
    Input Text    ${email_xpath}             ${email}
    Input Text    ${address_xpath}           ${address}
    Input Text    ${city_xpath}              ${city}
    Input Text    ${state_xpath}             ${state}
    Input Text    ${postalcode_xpath}        ${postalcode}
    Select One Value From Drop Down List    name        country     ${country}
    Input Text    ${username_xpath}          ${username}
    Input Text    ${password_xpath}          ${password}
    Input Text    ${confirm_password_xpath}   ${confirm_password}
Click On Submit button
    Click On Button     ${sumit_xpath}
Verify Its Showing Succesful Message
    Wait Until Page Contains Element    ${registration_msg_success_xpath}   timeout=10s
    ${word}=    Get Text       ${registration_msg_success_xpath}
    Run Keyword If    "Thank" in "${word}"    Log    It's navigated to the home page
   [Teardown]    Close Browser



