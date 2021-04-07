*** Settings ***
Library    SeleniumLibrary
Resource    ../Recources/common.robot
Resource    ../Recources/PageObjectModel/LoginPage.robot
Resource    ../Recources/PageObjectModel/HomePage.robot
Resource    ../Recources/PageObjectModel/SearchPage.robot


Test Setup    common.Begin Test
Test Teardown   common.End Test

*** Test Cases ***

Verify user can Search for Property and rate it
  HomePage.clickLoginPage
  loginPage.Login With Valid Data
  SearchPage.Enter your location
  SearchPage.click Search






*** Keywords ***
