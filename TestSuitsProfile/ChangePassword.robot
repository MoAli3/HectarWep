*** Settings ***
Library    SeleniumLibrary

Resource    ../Recources/common.robot
Resource    ../Recources/PageObjectModel/LoginPage.robot
Resource    ../Recources/PageObjectModel/HomePage.robot
Resource    ../Recources/PageObjectModel/ChangePassword.robot


Test Setup    common.Begin Test
Test Teardown   common.End Test

*** Test Cases ***
Verify user can change the Password suceesfully
   [Documentation]    this is the test case for change the password
   [Tags]    smoke

        HomePage.clickLoginPage
        LoginPage.Login With Valid Data
        changepassword.click chang password page
        changepassword.Enter your old password
        changepassword.Enter new password
        changepassword.Click Save button
        changepassword.log out
        LoginPage.Login With new password


