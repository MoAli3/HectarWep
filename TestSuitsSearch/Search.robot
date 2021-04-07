*** Settings ***
Library    SeleniumLibrary
Resource    ../Recources/common.robot
Resource    ../Recources/PageObjectModel/LoginPage.robot
Resource    ../Recources/PageObjectModel/HomePage.robot
Resource    ../Recources/PageObjectModel/SearchPage.robot

Test Setup    common.Begin Test
Test Teardown   common.End Test
*** Test Cases ***
Verify the user can Search For Property
    [Documentation]    user can Search
    [Tags]    Smoke
    HomePage.clickLoginPage
    LoginPage.Login With Valid Data
    SearchPage.Enter your location
    SearchPage.click Search
    SearchPage.Filter the Properties



