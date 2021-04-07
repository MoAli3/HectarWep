*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    OperatingSystem
Library    JSONLibrary

*** Keywords ***



*** Variables ***
${base_Url}=  https://staggingbackend.devstagging.online:8080
${token}=  "Bearer  eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI2MDM2NWI3MDU1YWY5YzU4ZjRkNTQxNTMiLCJpYXQiOjE2MTQxNzUwODh9._qnEIWSCx4LdH8iTW-XwZggGNtDKGy0fQHfDchiK-jI"

*** Test Cases ***
TC001 Create Real Estate with valid data
  create session   addProperty  ${base_Url}
  ${headers}=  create dictionary       Authorization=${token}   Content-Type=application/json
  ${req_body}=  create dictionary    type=6006f888e529c20fe3dce7ed  status=6006eef7002fda47bcd2983d  purpose=6006ed4f002fda47bcd2983a  address.coordinates[0]=24.809453   address.coordinates[1]=46.619355   address.address=الرياض address.type=Point  price=1500
  ${response_body}=  post request    addProperty     /api/realEstate/addRealEstate   data=${req_body}  headers=${headers}
  log to console    ${response_body.status_code}
  log to console    ${response_body.content}
  ${status_code}=  convert to string      ${response_body.status_code}
   should be equal    ${status_code}  200

Tc002 Create Real Estate with invalid data

    create session   addProperty  ${base_Url}
  ${headers}=  create dictionary       Authorization=${token}   Content-Type=application/json
  ${req_body}=  create dictionary    type=6006f888e529c20fe3dce7ed  status=6006eef7002fda47bcd2983d  purpose=6006ed4f002fda47bcd2983a  address.coordinates[0]=24.809453   address.coordinates[1]=46.619355   address.address=الرياض address.type=Point  price=1500
  ${response_body}=  post request    addProperty     /api/realEstate/addRealEstate   data=${req_body}  headers=${headers}
  log to console    ${response_body.status_code}
  log to console    ${response_body.content}
  ${status_code}=  convert to string      ${response_body.status_code}
   should be equal    ${status_code}  200


