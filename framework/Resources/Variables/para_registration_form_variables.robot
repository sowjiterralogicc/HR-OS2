*** Variables ***
${ssn}          12345

#para registration xpaths
${firstname_xpath}               xpath://form[@id='customerForm']/table//descendant::input[@name='customer.firstName']
${lastname_xpath}                xpath://form[@id='customerForm']/table//descendant::input[@name='customer.lastName']
${address_xpath}                 xpath://form[@id='customerForm']/table//descendant::input[@name='customer.address.street']
${city_xpath}                    xpath://form[@id='customerForm']/table//descendant::input[@name='customer.address.city']
${state_xpath}                   xpath://form[@id='customerForm']/table//descendant::input[@name='customer.address.state']
${postalcode_xpath}              xpath://form[@id='customerForm']/table//descendant::input[@name='customer.address.zipCode']
${phone_xpath}                  xpath://form[@id='customerForm']/table//descendant::input[@name='customer.phoneNumber']
${ssn_xpath}                     xpath://form[@id='customerForm']//descendant::input[@name='customer.ssn']
${username_xpath}                xpath://form[@id='customerForm']/table//descendant::input[@name='customer.username']
${password_xpath}                xpath://form[@id='customerForm']/table//descendant::input[@name='customer.password']
${confirm_password_xpath}        xpath://form[@id='customerForm']/table//descendant::input[@name='repeatedPassword']
${register_button_xpath}                xpath://form[@id='customerForm']/table//descendant::input[@class='button']


#Para registration Successful message xpath
${registration_message_xpath}       //xapth://h1[@class='title']