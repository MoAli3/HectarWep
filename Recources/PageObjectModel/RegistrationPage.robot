*** Settings ***
Library    SeleniumLibrary


*** Keywords ***

click Register Page
  click element   xpath=//a[@class='nav-link'and@aria-selected='false']

Enter Phone number
   input password    xpath=//*[@id="register-phoneNumber"]/input    053 333 3658
   sleep    2s
   input password    xpath=//div[@id='vie-otp-input-wrap']//div//div[1]//input[1]
   sleep     3s
   input password    xpath=//div[@id='vie-otp-input-wrap']//div[2]//input[1]
   input password    xpath=//div[@id='1']//div[3]//input[1]
   input password    xpath=//div[@id='1']//div[4]//input[1]
Enter your data
   input text    xpath=//input[@placeholder='ادخل اسمك هنا']       mostafa mostafa
   sleep    2s
   input text    xpath=//label[@for='email2']//input[@type='text']   mostafa.ali@hectar.com
   sleep    2s
   wait until page contains element    css=#password.has-error
   input password   css=#password.has-error   123456
   sleep    2s
   click element    xpath=//input[@autocomplete='nope']
   sleep    2s
   click element    xpath=//body//div//div//div//div//div//div//div//div//div//div//li[5]
   sleep    2s
   click element    xpath=//div[@role='tabpanel']//div[2]//button[1]

