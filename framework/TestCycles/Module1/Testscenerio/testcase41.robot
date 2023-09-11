*** Settings ***
Library    SeleniumLibrary
Resource    ../../../Resources/Keywords/Hr_daily_base_sheet_keywords.robot
Resource    ../../../Resources/Variables/Hr_login_variables.robot
Resource    ../../../Resources/Keywords/Hr_login_keywords.robot
Resource    ../../../Resources/PageObjects/Hr_login_po.robot
*** Test Cases ***
Time Sheet Fill On Daily Basis
     Open Terralogic Website
     Click on terralogic_login
     Switch to window
     Login to Gmail    ${Username}    ${Password}    ${Hros_user_xpath}     ${Hros_pass_xpath}    # Login to Gmail using provided credentials
     Sleep    5s
     Switch Back To Main Window
     Sleep    4s
     Time Sheet for a week on Daily basis
     Close The Browser