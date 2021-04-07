*** Settings ***
Library    SeleniumLibrary
Resource    ../Recources/common.robot
Resource    ../Recources/PageObjectModel/LoginPage.robot
Resource    ../Recources/PageObjectModel/HomePage.robot
Resource    ../Recources/PageObjectModel/AddRealEstatePage.robot
Resource    ../Recources/PageObjectModel/EditMy PropertyPage.robot


Test Setup    common.Begin Test
Test Teardown   common.End Test

*** Test Cases ***
Verify user can edit the Properties Sucessfully
   [Tags]    smoke
   [Documentation]    this is test case for edit the properties


   homepage.clickloginpage
   LoginPage.Login With Valid Data
   HomePage.Click Add Property Button
   AddRealEstatePage.Add Real Estate of type land
   EditMy PropertyPage.click My Properties Page
   EditMy PropertyPage.click edit button
   EditMy PropertyPage.change the area
   EditMy PropertyPage.click update the Property
   EditMy PropertyPage.click Preview Property
   EditMy PropertyPage.log out





