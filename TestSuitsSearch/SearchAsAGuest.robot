*** Settings ***
Library    SeleniumLibrary
Resource    ../Recources/common.robot
Resource    ../Recources/PageObjectModel/SearchAsAGuestPage.robot
Resource    ../Recources/PageObjectModel/HomePage.robot

Test Setup    common.Begin Test
Test Teardown   common.End Test
*** Test Cases ***
Verify that user can do any action without log in
   [Documentation]    Smoke
   HomePage.go to Search
   SearchAsAGuestPage.Verify that user can't add Property to Favorite without log in
   searchasaguestpage.verify that user can't add like property without log in


