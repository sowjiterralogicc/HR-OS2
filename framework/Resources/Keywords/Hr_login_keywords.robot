
*** Settings ***
Library           SeleniumLibrary
Resource          ../Variables/Hr_login_variables.robot

*** Keywords ***
Click on terralogic_login

    Click Element    ${terralogic_login}
    Sleep    10s

Login to Gmail
    [Arguments]    ${username}      ${password}      ${user_xpath}      ${pass_xpath}

    Input Text    ${user_xpath}     ${username}
    Sleep    5s
    Click Button    ${Next}
    Sleep    30s
    Input Text    ${pass_xpath}     ${password}
    Sleep    5s
    Click Button    ${Next}
    sleep   30s

Switch to window

    ${handles} =    Get Window Handles
    Switch Window    ${handles}[1]

Switch Back To Main Window
    ${handles} =    Get Window Handles
    Switch Window    ${handles}[0]


Close The Browser
	Close All Browsers