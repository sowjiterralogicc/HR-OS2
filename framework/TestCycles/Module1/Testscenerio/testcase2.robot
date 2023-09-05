*** Settings ***
Library    SeleniumLibrary
Resource    ../../../Resources/PageObjects/guru99_login.robot
*** Test Cases ***
Validate Orange Hrm Login page with Valid credentials
    Launch_Guru99_Login_page
    Pass The Vaild Credential For Login Page
    Click On Login Button
    Verify Login Page Navigate To HomePage
