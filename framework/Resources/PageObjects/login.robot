*** Settings ***
Library    SeleniumLibrary
Resource    ../Keywords/common_keywords.robot
Resource    ../Variables/common_varibales.robot
Resource    ../Variables/login_orange_hrm_variables.robot
*** Keywords ***
Launch_HRM_Login_page

    Lanuch Browser    ${orange_portal_url}
    Sleep     5s



Pass the vaild credential for login page
    Pass Credentials For Login    ${username_xpath}    ${password_xpath}    ${valid_username}   ${valid_password}



Click On Login Button
    Click On Button    ${login_button}
    Sleep    5s
Verify Login page Navigate to HomePage
    Wait Until Page Contains Element    ${dashboard_text_xpath}   timeout=10s
    ${word}=    Get Text       ${dashboard_text_xpath}
    Run Keyword If    "${word}" != "Dashboard"    Log    It's not navigated to the home page
    [Teardown]    Close Browser
