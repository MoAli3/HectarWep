*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary
Library    Collections



*** Variables ***
${base_Url}=  https://staggingbackend.devstagging.online:8080


*** Keywords ***
click ForgotPasswordLink
  click element    xpath=//a[contains(text(),'نسيت كلمة المرور؟')]
  sleep    5s
Enter Phone number
  input password    xpath=//input[@placeholder='ادخل رقم الجوال']    966511156525
  sleep    3s
  click element    xpath=//button[@class='btn wizard-footer-right btn-primary']
  sleep    10s
send request to gain the code
  create session    mysession  ${base_Url}
   ${body}=   create dictionary    phoneNumber=966511156525
   ${header}=  create dictionary  Content-Type=application/json
  ${response} =  post request     mysession  /api/forgetPassword  data=${body}  headers=${header}
   log to console  ${response.status_code}
   log to console    ${response.content}
   ${status_code}=  convert to string     ${response.status_code}
   should be equal    ${status_code}  200
   ${res_body}=  convert to string    ${response.content}
    should contain     ${res_body}  confirmationCode
    log to console    ${res_body}
Enter the code
   sleep    5s
   press keys     xpath=//div[@id='vie-otp-input-wrap']//div//div[1]//input[1]    confirmationCode
   #sleep    2s
   #input password   xpath=//div[@id='vie-otp-input-wrap']//div//div[1]//input[1]  confirmationCode
   #sleep    2s
   #input password   xpath=//div[@id='vie-otp-input-wrap']//div//div[1]//input[1]  confirmationCode
   #sleep    2s
   #input password   xpath=//div[@id='vie-otp-input-wrap']//div//div[1]//input[1]  confirmationCode
   #sleep    5s
   input password     xpath=//input[@id='password1']    123456
   sleep    3s
   click element    xpath=//button[@class='btn wizard-footer-right finish-button btn-primary']
