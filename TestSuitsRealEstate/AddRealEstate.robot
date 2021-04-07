*** Settings ***
Library    SeleniumLibrary
Resource    ../Recources/common.robot
Resource    ../Recources/PageObjectModel/LoginPage.robot
Resource    ../Recources/PageObjectModel/HomePage.robot
Resource    ../Recources/PageObjectModel/AddRealEstatePage.robot

Test Setup    common.Begin Test
Test Teardown   common.End Test
*** Test Cases ***
Add Real Estate apartment
  [Tags]    smoke
  [Documentation]    this is the Test Case for Add Properties
  homepage.clickloginpage
  LoginPage.Login With Valid Data
  HomePage.Click Add Property Button
  AddRealEstatePage.Add Property the type apartment

Add Real Estate villa
   [Tags]    smoke
  [Documentation]    this is the Test Case for Add Properties
  homepage.clickloginpage
  LoginPage.Login With Valid Data
  HomePage.Click Add Property Button
  AddRealEstatePage.Add Property the type villa
Add Real Estate Building
   [Tags]    smoke
  [Documentation]    this is the Test Case for Add Properties
  homepage.clickloginpage
  LoginPage.Login With Valid Data
  HomePage.Click Add Property Button
  AddRealEstatePage.Add Real Estate of type Building
Add Real Estate complex
   [Tags]    smoke
  [Documentation]    this is the Test Case for Add Properties
  homepage.clickloginpage
  LoginPage.Login With Valid Data
  HomePage.Click Add Property Button
  AddRealEstatePage.Add Real Estate of type complex
Add Real Estate land
   [Tags]    smoke
  [Documentation]    this is the Test Case for Add Properties
  homepage.clickloginpage
  LoginPage.Login With Valid Data
  HomePage.Click Add Property Button
  AddRealEstatePage.Add Real Estate of type land



