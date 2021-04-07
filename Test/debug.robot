*** Settings ***
Library    SeleniumLibrary


*** Variables ***

@{verifcationCode}  3     4       9       6
@{password}  mostafa

*** Test Cases ***
verify test case
   open browser    https://dev.devstagging.online/  chrome
   sleep    6s
   click element   //a[contains(text(),'تسجيل دخول/ اشتراك')]
   sleep    6s
   click element    //a[@class='nav-link'and@aria-selected='false']
   sleep    3s
   input password    xpath=//*[@id="register-phoneNumber"]/input    058 888 5555
   sleep    2s
   click element    xpath=//button[@class='btn wizard-footer-right btn-primary']
   sleep    3s
   input password    xpath=//div[@id='vie-otp-input-wrap']//div//div[1]//input[1]  ${verifcationCode}[0]
   sleep    1s
   input password    xpath=//div[@id='vie-otp-input-wrap']//div[2]//input[1]   ${verifcationCode}[1]
   sleep    1s
   input password    xpath=//div[@id='1']//div[3]//input[1]    ${verifcationCode}[2]
   sleep    1s
   input password    xpath=//div[@id='1']//div[4]//input[1]    ${verifcationCode}[3]
   sleep    3s
   input text    xpath=//input[@class='form-control'and@placeholder='ادخل اسمك هنا']    مصطفي علي كمال
   sleep    2s
   input text   //input[@placeholder='ادخل بريدك الإلكتروني']    mostafa.ali@test32.com
   sleep    5s

   input password    id=password register-password   ${password}
    wait until page contains element    id=account-type
   sleep    2s
   click element    xpath=//li[@class='multiselect__element'][1]
   sleep    3s
   click element    xpath=//button[@class='btn wizard-footer-right finish-button btn-primary']
   sleep    3s


