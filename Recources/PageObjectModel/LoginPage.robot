*** Settings ***
Library    SeleniumLibrary



*** Variables ***

@{Phone_Number}  0587454488    0500000000
${Password}  123456
*** Keywords ***
Login Page invalid data

   input password    name=telephone    ${Phone_Number}[0]
   input password   id=password login-password     ${Password}
   click element    xpath=//button[@type='submit']/span[1]
   #wait until page contains    اشتراك / تسجيل الدخول
Login With Valid Data
   input password    name=telephone    ${Phone_Number}[1]
   input password   id=password login-password     ${Password}
   click element    xpath=//button[contains(@class,'btn button margin-bottom-0 w-100 bg-blue btn-primary')]
   #wait until page contains
   sleep    2s

click register lik
      click element     //a[contains(text(),'تسجيل حساب جديد')]
   sleep    5s
Login With new password
   input password    name=telephone    ${Phone_Number}[1]
   input password   id=password login-password    1234567
   click element    xpath=//button[contains(@class,'btn button margin-bottom-0 w-100 bg-blue btn-primary')]
   #wait until page contains
   sleep    6s
