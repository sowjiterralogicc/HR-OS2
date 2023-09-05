*** Variables ***
${valid_username}         thippeswamy
${valid_password}         12345678

#Login page Xpaths
${usrname_xpath}            xpath://form[@name='register']/table//descendant::input[@name='userName']
${password_xpath}           xpath://form[@name='register']/table//descendant::input[@name='password']
${login_button_xpath}       xpath://form[@name='register']/table//descendant::input[@name='submit']

#Home page xpaths
${Login_successful_msg_xpath}       xpath://h3