*** Settings ***
Library    SeleniumLibrary
Resource    ../../../Resources/PageObjects/para_registrationPO.robot

*** Test Cases ***
Verify the registration page filling with valid data into relevant fields
    Launch The Para Registration Form Website
    Fill With Valid Data Into Appropriate Fields
    Click On Register Button
    Close Browser Windows
