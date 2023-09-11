*** Settings ***
Library    SeleniumLibrary
Resource    ../Variables/Hr_top_menu_variables.robot

*** Keywords ***

Search Image on The Top Menu
    Click Element     ${search_image_xpath} 
    Sleep    5s
    Input Text        ${enter_name_xpath}      ${search_name}
    Sleep    5s

    Press Keys    None    ESC
    Sleep    10s

Mouse Hover Functionality
    ${hover_element}=    Get WebElement    ${mouse_hover_action}

    Mouse Over      ${hover_element}
    Press Keys       ${hover_element}       \\13
    Sleep    5s

    Click Element     ${elements_xpath_1}
    sleep   2s
    Click ELement     ${mose_hover_cross_xpath}
    Execute JavaScript    location.reload(true)
    sleep    5s


    ${hover_element}=    Get WebElement    ${mouse_hover_action}

    Mouse Over      ${hover_element}
    Press Keys       ${hover_element}       \\13
    Sleep    5s
    Click Element     ${elements_xpath_2}
    sleep   2s
    Click Element     ${mose_hover_cross_xpath}

    ${hover_element}=    Get WebElement    ${mouse_hover_action}
    Mouse Over      ${hover_element}
    Press Keys       ${hover_element}       \\13
    Sleep    5s
    Click Element     ${elements_xpath_3}
    Execute JavaScript    location.reload(true)
    sleep    5s

    ${hover_element}=    Get WebElement    ${mouse_hover_action}

    Mouse Over      ${hover_element}
    Press Keys       ${hover_element}       \\13
    Click Element    ${elements_xpath_4}
    sleep    10s
    Execute JavaScript    location.reload(true)
    sleep    5s

    ${hover_element}=    Get WebElement    ${mouse_hover_action}

    Mouse Over        ${hover_element}
    Press Keys        ${hover_element}       \\13
    Click Element     ${elements_xpath_5}
    sleep   10s
    Execute JavaScript    location.reload(true)
    sleep    5s


    ${hover_element}=    Get WebElement    ${mouse_hover_action}

    Mouse Over        ${hover_element}
    Press Keys        ${hover_element}       \\13
    Click Element     ${elements_xpath_6}
    Execute JavaScript    location.reload(true)
    sleep    10s


#
Bell Image Functionality
    Click Element      ${bell_symbol_xpath}
    Press Keys    None    ESC

Brush Image Functionality
    Execute JavaScript    location.reload(true)
    sleep    10s
    Click Element     ${brush_symbol_xpath}
    Press Keys    None    ESC
    Execute JavaScript    location.reload(true)
    sleep   10s

Drop Down Functionality
    Click ELement    ${dropdown_xpath}
    Click Element    ${india_language_xpath}
    Execute JavaScript    location.reload(true)
    sleep   10s


Profile Functionality
    Click Element     ${profile_xpath}
    Click Element     ${view_profile_xpath}
    sleep    10s

Left Side Menu
    #Click Element     ${left_home_xpath}

    Click Element     ${left_directory_xpath}
    sleep  5s
    Mouse Over        ${directory_pop_up_xpath}

    Click Element     ${left_timesheet_xpath}
