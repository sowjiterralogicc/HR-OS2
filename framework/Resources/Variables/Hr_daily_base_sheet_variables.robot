*** Variables ***

${timesheet}            //a[@href='/time-sheet']
${addtask}              //button[@class='ant-btn ant-btn-round ant-btn-primary ant-btn-lg MyButton__primary']//img
${calendar}             //input[@id='basic_dates']
${select_start_date}    //td[@title='2023-09-04']//div[@class='ant-picker-cell-inner'][normalize-space()='4']
${select_end_date}      //td[@title='2023-09-04']//div[@class='ant-picker-cell-inner'][normalize-space()='4']
${select_start_time}    //div[1]/div/div/div[2]/div/div/div/div/span[2]
${select_start_time1}   //div[@class='ant-select-item-option-content'][normalize-space()='9:00 am']
${select_end_time}      //div[2]/div/div/div[2]/div/div/div/div/span[2]
${select_end_time1}     //div[@class='ant-select-item-option-content'][normalize-space()='6:00 pm']
${select_project}       //*[@id="basic_tasks_0_projectId"]
${select_project_name}  //div[contains(text(),'Rampup_Software Services - Terralogic')]
${task_name}            //*[@id="basic_tasks_0_taskName"]
${description}          //*[@id="basic_tasks_0_notes"]
${submit}               //button[@type='submit']

${task_name_value}      Robot framework
${description_value}    Valuating Test cases
${date_xpath}       xpath://td[@title='2023-09-05']
@{Weekend}          Saturday    Sunday