*** Settings ***

Library    SeleniumLibrary
Resource    ../Recources/common.robot
Resource    ../Recources/PageObjectModel/LoginPage.robot
Resource    ../Recources/PageObjectModel/HomePage.robot
Resource    ../Recources/PageObjectModel/ChangePassword.robot
Resource    ../Recources/PageObjectModel/HelpCenterPage.robot

Test Setup    common.Begin Test
Test Teardown   common.End Test


*** Test Cases ***
Verify user can sent message for help center

    HomePage.clickLoginPage
  LoginPage.Login With Valid Data
  ChangePassword.click chang password page
   click help cenyer link
   Enter your Problem
    click submit


