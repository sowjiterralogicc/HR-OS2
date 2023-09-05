*** Settings ***
Library    SeleniumLibrary
Resource    ../../../Resources/PageObjects/login.robot
*** Test Cases ***
Validate Orange Hrm Login page with Valid credentials
    Launch_HRM_Login_page
    Pass The Vaild Credential For Login Page
    Click On Login Button
    Verify Login Page Navigate To HomePage
    Close Browser




