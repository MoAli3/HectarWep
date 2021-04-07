*** Settings ***
Library    SeleniumLibrary



*** Keywords ***
 Enter your location
    input text    id=autosuggest__input_home   الرياض
    sleep    2s
    click element    xpath=//span[@class='pac-matched'][contains(.,'الرياض')]
click Search
    sleep    2s
    click element    xpath=//button[@type='submit']
    sleep    5s
Filter the Properties
    click element    xpath=//button[contains(text(),'نوع العقار')]
    sleep    2s
    click element    xpath=/html[1]/body[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[1]/ul[1]/li[2]/div[1]/ul[1]/li[1]/form[1]/fieldset[1]/div[1]/div[1]/div[2]/label[1]/span[1]
    sleep    3s
    click element    xpath=//*[@id="listings-list"]/div[1]/div[2]/div[2]/a/span
    sleep    3s
    click element      xpath=//button[@id='user-menu__BV_toggle_']
     sleep    2s
     log    message
     click element    xpath=//*[@id="user-menu"]/ul/li[3]/a
     sleep    3s


