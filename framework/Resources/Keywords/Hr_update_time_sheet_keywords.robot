*** Settings ***
Library   SeleniumLibrary
Resource   ../Variables/Hr_daily_base_sheet_variables.robot
Resource   ../Variables/Hr_weekly_basis_variables.robot
Resource   ../Variables/Hr_update_time_sheet_variables.robot
Library    DateTime
Library    String
Library    Collections

*** Keywords ***
Mouse Over TO Task Header
	Mouse Over      ${Task_Header_xpath}
    sleep   10s
Click On Weekly Basis Button
	Click ELement    ${Weekily_lable_xpath}
Click On TimeSheet Menu
	Wait Until Element Is Visible    ${timesheet}
    Click Element    ${timesheet}
    Sleep   5s
Update Time Sheet
    ${edit_elemets}=   Get WebELements   ${edit_sheet_xpath}
    ${num_elements} =  Get Length    ${edit_elemets}
    #Log to console       sowji ${num_elements}
    IF    '${num_elements}' == '1'

    	Click Image  ${edit_sheet_xpath}
    	sleep  3s
    	Clear Element Text     xpath://textarea[@id='basic_notes']

        Input Text      xpath://textarea[@id='basic_notes']      This is enew file edit thing
        Click Element      ${Update_button_xpath}
        sleep  5s
        #Click Element if Present    ${Overlap_Notification_Error_Msg}   ${Cancel_button_xpath}
        ${count} =    Set Variable    0
        FOR    ${i}    IN RANGE    1    6
    	    ${element}=  Run keyword and Return Status  Wait until element is visible     xpath://div[text()='Cancel']
            IF    '${element}' == 'True'
                ${count} =    Evaluate    ${count} + 1
            END
        END

        IF  '${count}'>='4'
            Log To Console    count ${count}

        	Click Element   xpath://div[text()='Cancel']
        END
        Click Element     ${forward_button_xpath}
    END

    	sleep  5s

    IF    '${num_elements}' != '1'
        FOR    ${index}    ${element}    IN ENUMERATE    @{edit_elemets}
            ${is_clickable} =    Run Keyword And Ignore Error   Click Element    ${element}
            sleep  5s
            #Log To Console   is clickable ${is_clickable}

            ${link_elements} =    Run keyword and Return Status  Element Should Be Visible    xpath://textarea[@id='basic_notes']    timeout=10s
            Run Keyword If    ${link_elements} =='True'   Exit For Loop  Else  Log TO console hi
                #Log    Link page is open, execute actions

        END

        Clear Element Text     xpath://textarea[@id='basic_notes']
        sleep   2s
        Input Text       xpath://textarea[@id='basic_notes']        ${EMPTY}
        sleep   2s
        Input Text      xpath://textarea[@id='basic_notes']      This is new file edit thing
        Click Element      ${Update_button_xpath}
        sleep  7s
        ${count} =    Set Variable    0
        FOR    ${i}    IN RANGE    1    6
    	    ${element}=  Run keyword and Return Status  Wait until element is visible     xpath://div[text()='Cancel']
            IF    '${element}' == 'True'
                ${count} =    Evaluate    ${count} + 1
            END
        END

        IF  '${count}'>='4'
        	Log To Console   2nd if ${count}
        	Click Element   xpath://div[text()='Cancel']
        END

    	Click Element     ${forward_button_xpath}
    	sleep  5s
    END

Click Element if Visible
    FOR    ${i}   IN   RANGE    1   To   6
        ${element1}=    Run Keyword And Return Status    Element Should Be Visible     ${edit_sheet_xpath}
        Log To Console    ${element1}
        ${element2}=    Run Keyword And Return Status    Element Should Be Visible     ${forward_button_xpath}
        sleep  2s
        Log To Console    ${element2}

        Run Keyword If	'${element1}'=='True'	  Update Time Sheet	 ELSE	Click Button      ${forward_button_xpath}
        sleep   3s
    END


