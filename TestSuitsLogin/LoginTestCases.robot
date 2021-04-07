*** Settings ***
Documentation     this is first Script
Library    SeleniumLibrary
Resource    ../Recources/common.robot
Resource    ../Recources/PageObjectModel/LoginPage.robot
Resource    ../Recources/PageObjectModel/HomePage.robot



Test Setup    common.Begin Test
Test Teardown   common.End Test
*** Test Cases ***

Verify User cannot Login with a invalid data
   [Documentation]    this is First Test Case
   [Tags]    smoke test

   HomePage.clickLoginPage
  LoginPage.Login Page invalid data


Verify User Can Login With a Valid data
   [Documentation]    this is second  Test Case
   [Tags]    smoke test

    HomePage.clickLoginPage
    LoginPage.Login With Valid Data












