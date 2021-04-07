*** Settings ***
Library    RequestsLibrary
Library    Collections


*** Variables ***
${base_Url}=  https://staggingbackend.devstagging.online:8080


*** Keywords ***


*** Test Cases ***
Tc01 login with valid data
  create session    userlogin   ${base_Url}
  ${headers}=    create dictionary    Content-Type=application/json
  ${req_body}=  create dictionary  phoneNumber=966511111544  password=123456
  ${res_body}=  post request    userlogin      /api/loginUser   data=${req_body} header=${headers}
  log to console    ${res_body.status_code}
  log to console    ${res_body.content}
  ${status_code}=  convert to string      ${res_body.status_code}
   should be equal    ${status_code}  200
Tc01 login with invalid data

  create session    userlogin   ${base_Url}
  ${headers}=    create dictionary    Content-Type=application/json
  ${req_body}=  create dictionary  phoneNumber=966511111544  password=123456
  ${res_body}=  post request    userlogin      /api/loginUser   data=${req_body} header=${headers}
  log to console    ${res_body.status_code}
  log to console    ${res_body.content}
  ${status_code}=  convert to string      ${res_body.status_code}
   should be equal    ${status_code}  400