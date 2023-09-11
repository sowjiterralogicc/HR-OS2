*** Settings ***
Library   SeleniumLibrary
Resource   ../Variables/Hr_daily_base_sheet_variables.robot
Resource   ../Variables/Hr_weekly_basis_variables.robot
Resource   ../Variables/Hr_update_time_sheet_variables.robot
Resource   ../Variables/Hr_delete_time_sheet_variables.robot
Library    DateTime
Library    String
Library    Collections

*** Keywords ***
Mouse Over TO Task Header
	Mouse Over      ${Task_Header_xpath}
    sleep   10s

Click On TimeSheet Menu
	Wait Until Element Is Visible    ${timesheet}
    Click Element    ${timesheet}
    Sleep   5s
Delete Daily Time Sheet

    ${edit_elemets}=   Get WebELements   ${delete_sheet_xpath}
    ${num_elements} =  Get Length    ${edit_elemets}
    #Log to console       sowji ${num_elements}
    IF    '${num_elements}' == '1'
    	#Log To Console  HIIIIII
    	Click Image  ${delete_sheet_xpath}
    	${Delete_button}=  Run Keyword And Ignore Error    Click Button   xpath://div[@class='ant-modal ActionModal']//descendant::button[3]
    	sleep  5s

        Click Element     ${forward_button_xpath}
    END

    	sleep  5s
    #Log To Console    	webelements ${edit_elemets}
    IF    '${num_elements}' != '1'
        FOR    ${index}    ${element}    IN ENUMERATE    @{edit_elemets}
            ${is_clickable} =    Run Keyword And Ignore Error   Click Element    ${element}
            sleep  2s
            ${Delete_button}=  Run Keyword And Ignore Error    Click Button   xpath://div[@class='ant-modal ActionModal']//descendant::button[3]
            sleep  5s

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

        Run Keyword If	'${element1}'=='True'	  Delete Daily Time Sheet	 ELSE	Click Button      ${forward_button_xpath}
        sleep   3s
    END




