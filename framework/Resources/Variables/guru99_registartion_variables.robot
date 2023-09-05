*** Variables ***


${email}                thippeswamy95655@gmail.com
${country}              INDIA

















#guru 99 registration page xpaths

${firstname_xath}               xpath://form[@action='register.php']/table//descendant::input[@name='firstName']
${lastname_xpath}               xpath://form[@action='register.php']/table//descendant::input[@name='lastName']
${phone_xpath}                  xpath://form[@action='register.php']/table//descendant::input[@name='phone']
${email_xpath}                  xpath://form[@action='register.php']/table//descendant::input[@name='userName']
${address_xpath}                xpath://form[@action='register.php']/table//descendant::input[@name='address1']
${city_xpath}                   xpath://form[@action='register.php']/table//descendant::input[@name='city']
${state_xpath}                  xpath://form[@action='register.php']/table//descendant::input[@name='state']
${postalcode_xpath}             xpath://form[@action='register.php']/table//descendant::input[@name='postalCode']
${username_xpath}               xpath://form[@action='register.php']/table//descendant::input[@name='email']
${password_xpath}               xpath://form[@action='register.php']/table//descendant::input[@name='password']
${confirm_password_xpath}       xpath://form[@action='register.php']/table//descendant::input[@name='confirmPassword']
${sumit_xpath}                  xpath://form[@action='register.php']/table//descendant::input[@name='submit']


#home_page_xpaths
${registration_msg_success_xpath}       xpath://*[contains(text(),' Thank you for registering')]
