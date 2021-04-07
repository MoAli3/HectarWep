*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
click My Properties Page
      sleep    3s
    click element     xpath=//button[@id='user-menu__BV_toggle_']
    sleep    2s
     click element    xpath=//*[@id="user-menu"]/ul/li[4]/a
click edit button
   sleep    3s
   click element    xpath=//div[@class='listing-overlay-link slide-item']
   sleep    2s
   click element     xpath=//a[@class='btn']

change the area
   sleep    5s
   clear element text    id=area
   sleep    2s
   input password    id=area   200
   sleep    3s
   click element    xpath=//button[@class='btn wizard-footer-right btn-primary btn-lg']
   sleep    2s
   click element    xpath=//button[@class='btn wizard-footer-right btn-primary btn-lg']
   sleep    2s
   click element    xpath=//button[@class='btn wizard-footer-right btn-primary btn-lg']
   sleep    2s
   click element    xpath=//button[@class='btn wizard-footer-right btn-primary btn-lg']
   sleep    2s
   click element    xpath=//button[@class='btn wizard-footer-right btn-primary btn-lg']
   sleep    2s
click update the Property
   sleep    2s
   click element    xpath=//button[@class='btn wizard-footer-right finish-button btn-primary btn-lg']
click Preview Property
    sleep    5s
   click element    xpath=//div[@class='container submit-page mb-5']//a[1]
   sleep    2s
   page should contain    200متر
log out
       click element     xpath=//button[@id='user-menu__BV_toggle_']
        click element    xpath=//*[@id="user-menu"]/ul/li[6]/a

