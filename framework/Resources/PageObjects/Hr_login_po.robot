*** Settings ***
Library           SeleniumLibrary
Resource          ../Variables/Hr_login_variables.robot

*** Keywords ***
Open Terralogic Website

    Open Browser    ${BaseURL}    Chrome
    Set Selenium Implicit Wait    10s
    Maximize Browser Window

Logout from Hr-OS
    Click Element    xpath://span[@class='ant-avatar ant-avatar-circle ant-avatar-image MyAvatar'][1]
    Sleep    2s
    Click Element    xpath://span[.='Logout']
    Sleep    4s


