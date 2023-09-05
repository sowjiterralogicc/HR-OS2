*** Settings ***
Library    SeleniumLibrary
Resource    ../../../Resources/PageObjects/guru99_registrationPO.robot

*** Test Cases ***
Fill the Registration fields with relavant data
    Launch The Registration Form Webpage
    Fill All Fields With Valid Data Into Relevant Fields
    Click On Submit Button
    Verify Its Showing Succesful Message

