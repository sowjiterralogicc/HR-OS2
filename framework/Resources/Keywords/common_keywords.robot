*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Lanuch Browser
    [Arguments]    ${url}
    Open Browser    ${url}        Chrome
Close All Windows
    Close All Browsers
Pass credentials for login
    [Arguments]    ${user_xpath}     ${pass_xpath}   ${username}      ${password}
    Input Text      ${user_xpath}    ${username}
    Input Text      ${pass_xpath}    ${password}
Click On Button
  [Arguments]    ${Button_xpath}
  Click Button   ${Button_xpath}

Select One Value From Drop Down List
     [Arguments]    ${attribute}    ${attrib_value}         ${text}
     Select From List by Value    ${attribute}=${attrib_value}    ${text}



