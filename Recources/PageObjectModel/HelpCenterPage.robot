*** Settings ***
Library    SeleniumLibrary
*** Keywords ***
click help cenyer link
   click element    xpath=//a[contains(text(),'مركز المساعده')]
Enter your Problem
   click element     xpath=//input[@placeholder='اختر نوع المساعدة']
   click element    xpath=//ul[@class='multiselect__content']//span[@class='multiselect__option multiselect__option--highlight']
   input text       id=subject   I have a problem with Hectar
   input text    id=comments    hectar tell me you can not add Property
click submit
   click element    id=submit