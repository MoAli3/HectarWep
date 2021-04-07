*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
click chang password page
   click element     xpath=//button[@id='user-menu__BV_toggle_']
   sleep    3s
   click element    xpath=//*[@id="user-menu"]/ul/li[5]/a
   sleep    6s
Enter your old password
   input password    xpath=//input[@id='prevPassword']   1234567
Enter new password
    sleep    3s
   input password    xpath=//input[@id='password']   123456
Click Save button
   sleep    4s
   click element    xpath=//span[contains(text(),'حفظ التغيرات')]
log out
    sleep    3s
   click element     xpath=//button[@id='user-menu__BV_toggle_']
   sleep    3s
   click element    xpath=//*[@id="user-menu"]/ul/li[6]/a
   sleep    6s

