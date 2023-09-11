*** Settings ***
Library    SeleniumLibrary

Resource    ../../../Resources/Variables/Hr_login_variables.robot
Resource    ../../../Resources/Keywords/Hr_login_keywords.robot
Resource    ../../../Resources/PageObjects/Hr_login_po.robot
Resource    ../../../Resources/Keywords/Hr_delete_time_sheet_keywords.robot
*** Test Cases ***
Delete Time Sheet On Daily
     Open Terralogic Website
     Click on terralogic_login
     Switch to window
     Login to Gmail    ${Username}    ${Password}    ${Hros_user_xpath}     ${Hros_pass_xpath}
     Sleep    5s
     Switch Back To Main Window
     Click On TimeSheet Menu
     Mouse Over TO Task Header
     Click Element if Visible