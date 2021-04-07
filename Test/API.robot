*** Settings ***
Library    RequestsLibrary
Library    Collections


*** Variables ***
${base_Url}=    https://backend.hectar.io:8080

*** Test Cases ***
check the phone number
   create session    mysession  ${base_Url}
   ${body}=   create dictionary    phoneNumber=0588844565
   ${header}=  create dictionary  Content-Type=application/json
    ${response}=   post request   mysession     /api/checkUser  data=${body}  headers=${header}

    log to console  ${response.status_code}
    log to console    ${response.content}

   ${status_code}=  convert to string     ${response.status_code}
   should be equal    ${status_code}  200


    ${res_body}=  convert to string    ${response.content}
    should contain     ${res_body}  confirmationCode
    log to console    ${res_body}
     create session    mysession  ${base_Url}
    ${body2}=  create dictionary    phoneNumber=0588844565  confirmationCode=${res_body}
    ${header2}=  create dictionary    Content-Type=application/json
    ${response2}=  post request    mysession     /api/confirmRegister  data=${body2}

     log to console  ${response.status_code}
      log to console    ${response.content}

      ${status_code2}=  convert to string     ${response.status_code}
       should be equal    ${status_code2}   200
       ${res_body1}=  convert to string    ${response.content}
        log to console     ${res_body1}





