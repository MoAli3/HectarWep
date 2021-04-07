*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

clickLoginPage
   wait until element is visible    //a[contains(text(),'تسجيل دخول/ اشتراك')]
   click element    //a[contains(text(),'تسجيل دخول/ اشتراك')]
   sleep    3s


Click Add Property Button
      wait until element is visible     xpath=//*[@id="header"]/div/div/div[3]/button
      click element   xpath=//*[@id="header"]/div/div/div[3]/button
      wait until element is visible    xpath=//button[@id='user-menu__BV_toggle_']

click profile page
     click element      xpath=//button[@id='user-menu__BV_toggle_']
     wait until element is visible    xpath=//*[@id="user-menu"]/ul/li[2]/a
     click element    xpath=//*[@id="user-menu"]/ul/li[2]/a
go to Search
  click element  xpath=//label[@class='h4'][2]
  sleep    3s
  input text    xpath=//input[@class='form-control pac-target-input']  الرياض
  sleep    3s
  click element    xpath=//span[@class='pac-matched'][contains(.,'الرياض')]
  sleep    3s
  click element    xpath=//button[contains(@type,'submit')]
  sleep    5s

     




