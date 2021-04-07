*** Settings ***
Library    SeleniumLibrary

Resource    ../Recources/common.robot
Resource    ../Recources/PageObjectModel/LoginPage.robot
Resource    ../Recources/PageObjectModel/HomePage.robot
Resource    ../Recources/PageObjectModel/RegistrationPage.robot
Test Setup    common.Begin Test
Test Teardown   common.End Test
*** Test Cases ***
User can register Sucessfully
   [Documentation]  registration with a vaild data
   [Tags]    Smoke
      homepage.clickloginpage
       LoginPage.click register lik
      RegistrationPage.Enter Phone number
     RegistrationPage.Enter Phone number
    RegistrationPage.Enter your data







