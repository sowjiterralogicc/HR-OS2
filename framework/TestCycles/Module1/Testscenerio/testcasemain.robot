*** Settings ***
Library    SeleniumLibrary
Resource   ../../../Resources/Variables/Hr_login_variables.robot
Resource   ../../../Resources/Keywords/Hr_login_keywords.robot
Resource   ../../../Resources/PageObjects/Hr_login_po.robot
Resource    ../../../Resources/Keywords/Hr_top_menu_keywords.robot
Resource    ../../../Resources/Keywords/Hr_daily_base_sheet_keywords.robot
Resource    ../../../Resources/Keywords/Hr_weekly_basis_keywords.robot
Resource    ../../../Resources/Keywords/Hr_update_time_sheet_keywords.robot
Resource    ../../../Resources/Keywords/Hr_delete_time_sheet_keywords.robot
*** Test Cases ***
Gmail Login and Update Personal Information
    Open Terralogic Website
    Click on terralogic_login
    Switch to window
    Login to Gmail    ${Username}      ${Password}       ${Hros_user_xpath}        ${Hros_pass_xpath}
    Log To Console    Hr_OS Login Successful verified !!!!!
    Switch Back To Main Window
    Sleep    20s
    #TOP MENU FUNCTIONALITY
     Search Image on The Top Menu
     Mouse Hover Functionality
     Bell Image Functionality
     Brush Image Functionality
     Drop Down Functionality
     Profile Functionality
     #LEFT MENU FUNCTIONALITY
     Left Side Menu
#    DAILY BASIS TIMESHEET
     Time Sheet for a week on Daily basis
#    Close The Browser
#   WEEKLY BASIS TIMESHEET
    Click On TimeSheet Menu
    Sleep         2s
    Mouse Over TO Task Header
    Sleep          2s
    #Click On Weekly Basis Button
    Hr_weekly_basis_keywords.Click On Weekly Basis Button
    Time Sheet for a week on Weekly basis
    #UPDATE FUNCTIONALITY
    Click On TimeSheet Mmenu
    Mouse Over TO Task Hheader
    Click Element if Visible
    #DELETE FUNCTINALITY
    Click On TimeSheet Menuuu
    Mouse Over TO Task Headerrr
    Click Element if Visibleee
#    Logout from Hr-OS
#    Log To Console    Hr-OS Logout Successful verified !!!!!!!
