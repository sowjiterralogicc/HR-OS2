*** Settings ***
Library    SeleniumLibrary
Resource    ../Keywords/common_keywords.robot
Resource    ../Variables/common_varibales.robot
Resource    ../Variables/guru99_login_page_variables.robot
*** Keywords ***
Launch_Guru99_Login_page

    Lanuch Browser    ${guru99_portal}
    Maximize Browser Window




Pass the vaild credential for login page
    Pass Credentials For Login    ${usrname_xpath}    ${password_xpath}    ${valid_username}   ${valid_password}



Click On Login Button
    Click On Button    ${login_button_xpath}

Verify Login page Navigate to HomePage
    Wait Until Page Contains Element    ${Login_successful_msg_xpath}   timeout=10s
    ${word}=    Get Text       ${Login_successful_msg_xpath}
    Run Keyword If    "${word}" != "Login Successfully"    Log    It's not navigated to the home page
    [Teardown]    Close Browser