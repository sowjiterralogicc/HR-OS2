*** Settings ***
Library    SeleniumLibrary
Resource    ../../../Resources/Variables/Hr_login_variables.robot
Resource    ../../../Resources/Keywords/Hr_login_keywords.robot
Resource    ../../../Resources/PageObjects/Hr_login_po.robot
Resource    ../../../Resources/Keywords/Hr_top_menu_keywords.robot



*** Test Cases ***
Login Into Hros And Check The Top Menu Functionalities
    Open Terralogic Website    # Open the Terralogic website
    Click on terralogic_login    # Click on the login button
    Switch to window    # Switch to a new window for login
    Login to Gmail    ${Username}    ${Password}    ${Hros_user_xpath}     ${Hros_pass_xpath}
    Sleep    5s
    Switch Back To Main Window
    Sleep    30s
    Search Image on The Top Menu
    Mouse Hover Functionality
    Bell Image Functionality
    Brush Image Functionality
    Drop Down Functionality
    Profile Functionality
    Left Side Menu
