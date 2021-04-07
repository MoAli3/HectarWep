*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
For loob
  set selenium implicit wait    5s
  open browser     http://dev.devstagging.online/  chrome
  maximize browser window
   click element  xpath=//label[@class='h4'][2]
  sleep    3s
  input text    xpath=//input[@class='form-control pac-target-input']  الرياض
  sleep    3s
  click element    xpath=//span[@class='pac-matched'][contains(.,'الرياض')]
  sleep    3s
  click element    xpath=//button[contains(@type,'submit')]
  sleep    5s
  click element    //button[@class='btn dropdown-toggle btn--white btn--shadow ']
  sleep    1s
  click element    xpath=//input[@class='custom-control-input'and@value='6006f3050863a5081bfe53b2']
  sleep    2s


*** Variables ***
