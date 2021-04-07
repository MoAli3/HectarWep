*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary
Library    Collections
Resource    ../Recources/common.robot
Resource    ../Recources/PageObjectModel/HomePage.robot
Resource    ../Recources/PageObjectModel/ForgotPasswordPage.robot

Test Setup    common.Begin Test
Test Teardown   common.End Test
*** Test Cases ***
Verify user can Forgot Password suceessfully

    HomePage.clickLoginPage
   click ForgotPasswordLink
   Enter Phone number
  send request to gain the code
    Enter the code





