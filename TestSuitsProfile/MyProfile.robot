*** Settings ***
Library    SeleniumLibrary
Resource    ../Recources/common.robot
Resource    ../Recources/PageObjectModel/LoginPage.robot
Resource    ../Recources/PageObjectModel/HomePage.robot
Resource    ../Recources/PageObjectModel/MyProfilePage.robot

Test Setup    common.Begin Test
Test Teardown   common.End Test
*** Test Cases ***
user can change the data
     [Documentation]    this is the test case for My Progile Page
     [Tags]    Smoke

      HomePage.clickLoginPage
    LoginPage.Login With Valid Data
    HomePage.click profile page
    MyProfilePage.change the data
   MyProfilePage.click save the changes
       MyProfilePage.log out



