*** Settings ***
Library    SeleniumLibrary

*** Keywords ***


change the data
    clear element text    xpath=//body/div/div[@class='online-connection']/div/header[@class='header-2']/div[@class='header-wrapper']/div[1]
    sleep    3s
    input text    xpath=//label[@for='username']//input[@type='text']   mostafa kamal
    sleep    3s
    input text    xpath=//body//div//input[3]   mostafa.ali@zeem.sa
    sleep    2s
    click element    //input[@autocomplete='nope']
    sleep    3s
    click element    //body/div[@id='wrapper']/div[@class='online-connection']/div/div/div[@class='container container']/div[@id='user-page-wrap']/div[@class='col-md-7 col-lg-8']/div[@class='col-md-12 my-profile my-account mb-5']/div[@class='multiselect multiselect--above']/div[@class='multiselect__content-wrapper']/ul[@class='multiselect__content']/li[1]/span[1]
click save the changes
    click element    xpath=//*[@id="user-page-wrap"]/div[2]/div/button
    sleep    5s
log out

    click element    xpath=//button[@id='user-menu__BV_toggle_']
    sleep    2s
    click element    xpath=//*[@id="user-menu"]/ul/li[6]
