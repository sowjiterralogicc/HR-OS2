*** Settings ***
Library    SeleniumLibrary
Resource   ../../../Resources/Variables/Hr_login_variables.robot
Resource   ../../../Resources/Keywords/Hr_login_keywords.robot
Resource   ../../../Resources/PageObjects/Hr_login_po.robot

*** Test Cases ***
Gmail Login and Update Personal Information
    Open Terralogic Website
    Click on terralogic_login
    Switch to window
    Login to Gmail    ${Username}      ${Password}       ${Hros_user_xpath}        ${Hros_pass_xpath}
    Log To Console    Hr_OS Login Successful verified !!!!!
    Switch Back To Main Window
    Sleep    40s
    Logout from Hr-OS
    Log To Console    Hr-OS Logout Successful verified !!!!!!!
