*** Settings ***
Library    SeleniumLibrary

*** Keywords ***


Add Property the type apartment
  wait until page contains    نوع العقار
  click element    xpath=//input[@value='6006f3050863a5081bfe53b2']
  click element    xpath=//input[@value='600ea695e3672a38437e635c']
  wait until element is visible     id=price
  input password    id=price    2000
  wait until element is visible     id=area
  input password    id=area     150
  wait until page contains element   xpath=//input[@name='payType'and@value='0']
  click element    xpath=//input[@name='payType'and@value='0']
  wait until page contains element    xpath=//input[@name='populationType'and@value='600ea702e3672a38437e635e']
  click element    xpath=//input[@name='populationType'and@value='600ea702e3672a38437e635e']
  wait until element is visible    xpath=//button[@class='btn wizard-footer-right btn-primary btn-lg']
  click element    xpath=//button[@class='btn wizard-footer-right btn-primary btn-lg']
  wait until element is visible    xpath=//input[@class='autosuggest__input form-control pac-target-input']
  input text        xpath=//input[@class='autosuggest__input form-control pac-target-input']  الرياض
  sleep    3s
  click element    xpath=//span[@class='pac-matched'][contains(.,'الرياض')]
  sleep    2s
  click element   xpath=//button[@class='btn wizard-footer-right btn-primary btn-lg']
  sleep    2s
  sleep    3s
  input password    id=numberOfRooms   10
  click element    xpath=//button[@class='btn wizard-footer-right btn-primary btn-lg']
  sleep    2s
  wait until element is visible    xpath=//button[@type='button'and@class='btn button btn btn-primary']
  sleep    3s
  choose file    //input[@id='images']  C:\\Users\\Mostafa\\Downloads\\Compressed\\properties\\8\\1.jpg
  sleep    10s
  click element    xpath=//button[@class='btn wizard-footer-right btn-primary btn-lg']
  sleep    5s
  click element    xpath=//button[@class='btn wizard-footer-right btn-primary btn-lg']
  sleep    3s
  click element    xpath=//button[@class='btn wizard-footer-right finish-button btn-primary btn-lg']
  sleep    15s
Add Property the type villa
  wait until page contains    نوع العقار
  click element    xpath=//input[@value='600ea3e44e830d01fbeb24a9']
  click element    xpath=//input[@value='600ea695e3672a38437e635c']
  wait until element is visible     id=price
  input password    id=price    2000
  wait until element is visible     id=area
  input password    id=area     150
  sleep    2s
  #select checkbox    xpath=//div[@id='negotiable']//input[@name='check-button']
  #sleep    2s
  #select checkbox    xpath=//div[@id='fromOwner']//input[@name='check-button']
  wait until page contains element   xpath=//input[@name='payType'and@value='1']
  click element    xpath=//input[@name='payType'and@value='1']
  wait until element is visible    xpath=//button[@class='btn wizard-footer-right btn-primary btn-lg']
  click element    xpath=//button[@class='btn wizard-footer-right btn-primary btn-lg']
  wait until element is visible    xpath=//input[@class='autosuggest__input form-control pac-target-input']
  input text        xpath=//input[@class='autosuggest__input form-control pac-target-input']  الرياض
  sleep    3s
  click element    xpath=//span[@class='pac-matched'][contains(.,'الرياض')]
  sleep    2s
  click element   xpath=//button[@class='btn wizard-footer-right btn-primary btn-lg']
  sleep    3s
  input password    id=age  15
  sleep    1s
  input password    id=floor  12
  sleep    1s
  input password    id=numberOfLivingRoom  13
  sleep    1s
  input password    id=numberOfBathRoom   11
  sleep    1s
  input password    id=numberOfKitchenUnit  5
  sleep    1s
  input password    id=notes  this is the Property is very ggod and containa a lot of Features like is very big and the design it is awesome
  sleep    1s
  input password    id=numberOfRooms   10
  sleep    1s
  click element    xpath=//button[@class='btn wizard-footer-right btn-primary btn-lg']
  sleep    3s
  choose file    //input[@id='images']  C:\\Users\\Mostafa\\Downloads\\Compressed\\properties\\8\\1.jpg
  sleep    10s
  click element    xpath=//button[@class='btn wizard-footer-right btn-primary btn-lg']
  sleep    3s
  click element    xpath=//a[@class='button add-floorplans-submit-item']
  sleep    3s
  choose file    xpath=//div[@class='fm-inner-container']//input[@type='file']    C:\\Users\\Mostafa\\Downloads\\Compressed\\properties\\8\\1.jpg
  sleep    5s
  click element    xpath=//button[@class='btn wizard-footer-right btn-primary btn-lg']
  sleep    3s
  click element    xpath=//button[@class='btn wizard-footer-right finish-button btn-primary btn-lg']
  sleep    15s
Add Real Estate of type Building
  wait until page contains    نوع العقار
  click element    xpath=//input[@value='6018062412d0595f1aac387d']
  click element    xpath=//input[@value='600ea6ade3672a38437e635d']
  click element    xpath=//input[@value='600ea783e3672a38437e6360']
  wait until element is visible     id=price
  input password    id=price    2000
  wait until element is visible     id=area
  input password    id=area     150
  sleep    2s
  #select checkbox    xpath=//div[@id='negotiable']//input[@name='check-button']
  #sleep    2s
  #select checkbox    xpath=//div[@id='fromOwner']//input[@name='check-button']
  wait until page contains element   xpath=//input[@name='payType'and@value='1']
  click element    xpath=//input[@name='payType'and@value='1']
  wait until element is visible    xpath=//button[@class='btn wizard-footer-right btn-primary btn-lg']
  click element    xpath=//button[@class='btn wizard-footer-right btn-primary btn-lg']
  wait until element is visible    xpath=//input[@class='autosuggest__input form-control pac-target-input']
  input text        xpath=//input[@class='autosuggest__input form-control pac-target-input']  الرياض
  sleep    3s
  click element    xpath=//span[@class='pac-matched'][contains(.,'الرياض')]
  sleep    2s
  click element   xpath=//button[@class='btn wizard-footer-right btn-primary btn-lg']
  sleep    3s
  input password    id=age  15
  sleep    1s
  input password    id=floor  12
  sleep    1s
  input password    id=numberOfLivingRoom  13
  sleep    1s
  input password    id=numberOfUnit
  sleep    1s
  input password    id=numberOfBathRoom   11
  sleep    1s
  input password    id=numberOfKitchenUnit  5
  sleep    1s
  input password    id=notes  this is the Property is very ggod and containa a lot of Features like is very big and the design it is awesome
  sleep    1s
  input password    id=numberOfRooms   10
  sleep    1s
  click element    xpath=//button[@class='btn wizard-footer-right btn-primary btn-lg']
  sleep    3s
  choose file    //input[@id='images']  C:\\Users\\Mostafa\\Downloads\\Compressed\\properties\\8\\1.jpg
  sleep    10s
  click element    xpath=//button[@class='btn wizard-footer-right btn-primary btn-lg']
  sleep    3s
  click element    xpath=//a[@class='button add-floorplans-submit-item']
  sleep    3s
  choose file    xpath=//div[@class='fm-inner-container']//input[@type='file']    C:\\Users\\Mostafa\\Downloads\\Compressed\\properties\\8\\1.jpg
  sleep    5s
  click element    xpath=//button[@class='btn wizard-footer-right btn-primary btn-lg']
  sleep    3s
  click element    xpath=//button[@class='btn wizard-footer-right finish-button btn-primary btn-lg']
  sleep    15s
Add Real Estate of type complex
  wait until page contains    نوع العقار
  click element    xpath=//input[@value='600ea4054e830d01fbeb24ab']
  click element    xpath=//input[@value='600ea695e3672a38437e635c']
  click element    xpath=//input[@value='600ea79ce3672a38437e6361']
  wait until element is visible     id=price
  input password    id=price    2000
  wait until element is visible     id=area
  input password    id=area     150
  sleep    2s
  #select checkbox    xpath=//div[@id='negotiable']//input[@name='check-button']
  #sleep    2s
  #select checkbox    xpath=//div[@id='fromOwner']//input[@name='check-button']
  wait until page contains element   xpath=//input[@name='payType'and@value='1']
  click element    xpath=//input[@name='payType'and@value='1']
  wait until element is visible    xpath=//button[@class='btn wizard-footer-right btn-primary btn-lg']
  click element    xpath=//button[@class='btn wizard-footer-right btn-primary btn-lg']
  wait until element is visible    xpath=//input[@class='autosuggest__input form-control pac-target-input']
  input text        xpath=//input[@class='autosuggest__input form-control pac-target-input']  الرياض
  sleep    3s
  click element    xpath=//span[@class='pac-matched'][contains(.,'الرياض')]
  sleep    2s
  click element   xpath=//button[@class='btn wizard-footer-right btn-primary btn-lg']
  sleep    3s
  input password    id=age  15
  sleep    1s
  input password    id=floor  12
  sleep    1s
  input password    id=numberOfLivingRoom  13
  sleep    1s
  input password    id=numberOfUnit
  sleep    1s
  input password    id=numberOfBathRoom   11
  sleep    1s
  input password    id=numberOfKitchenUnit  5
  sleep    1s
  input password    id=notes  this is the Property is very ggod and containa a lot of Features like is very big and the design it is awesome
  sleep    1s
  input password    id=numberOfRooms   10
  sleep    1s
  click element    xpath=//button[@class='btn wizard-footer-right btn-primary btn-lg']
  sleep    3s
  choose file    //input[@id='images']  C:\\Users\\Mostafa\\Downloads\\Compressed\\properties\\8\\1.jpg
  sleep    10s
  click element    xpath=//button[@class='btn wizard-footer-right btn-primary btn-lg']
  sleep    3s
  click element    xpath=//a[@class='button add-floorplans-submit-item']
  sleep    3s
  choose file    xpath=//div[@class='fm-inner-container']//input[@type='file']    C:\\Users\\Mostafa\\Downloads\\Compressed\\properties\\8\\1.jpg
  sleep    5s
  click element    xpath=//button[@class='btn wizard-footer-right btn-primary btn-lg']
  sleep    3s
  click element    xpath=//button[@class='btn wizard-footer-right finish-button btn-primary btn-lg']
  sleep    15s
Add Real Estate of type land
  wait until page contains    نوع العقار
  click element    xpath=//input[@value='600ea3f34e830d01fbeb24aa']
  click element    xpath=//input[@value='600ea695e3672a38437e635c']
  click element    xpath=//input[@value='600ea79ce3672a38437e6361']
  wait until element is visible     id=price
  input password    id=price    2000
  wait until element is visible     id=area
  input password    id=area     150
  sleep    2s
  #select checkbox    xpath=//div[@id='negotiable']//input[@name='check-button']
  #sleep    2s
  #select checkbox    xpath=//div[@id='fromOwner']//input[@name='check-button']
  wait until page contains element   xpath=//input[@name='payType'and@value='1']
  click element    xpath=//input[@name='payType'and@value='1']
  wait until element is visible    xpath=//button[@class='btn wizard-footer-right btn-primary btn-lg']
  click element    xpath=//button[@class='btn wizard-footer-right btn-primary btn-lg']
  wait until element is visible    xpath=//input[@class='autosuggest__input form-control pac-target-input']
  input text        xpath=//input[@class='autosuggest__input form-control pac-target-input']  الرياض
  sleep    3s
  click element    xpath=//span[@class='pac-matched'][contains(.,'الرياض')]
  sleep    2s
  click element   xpath=//button[@class='btn wizard-footer-right btn-primary btn-lg']
  sleep    3s
  click element    xpath=//input[@type='checkbox'and@value='0']
  sleep    1s
  click element    xpath=//input[@type='checkbox'and@value='1']
  sleep    1s
  click element    xpath=//input[@type='checkbox'and@value='2']
  sleep    1s
  click element    xpath=//input[@type='checkbox'and@value='3']
  sleep    1s
  input password    id=notes  this is the Property is very ggod and containa a lot of Features like is very big and the design it is awesome
  sleep    1s
  click element    xpath=//button[@class='btn wizard-footer-right btn-primary btn-lg']
  sleep    3s
  choose file    //input[@id='images']  C:\\Users\\Mostafa\\Downloads\\Compressed\\properties\\8\\1.jpg
  sleep    10s
  click element    xpath=//button[@class='btn wizard-footer-right btn-primary btn-lg']
  sleep    3s
  click element    xpath=//a[@class='button add-floorplans-submit-item']
  sleep    3s
  choose file    xpath=//div[@class='fm-inner-container']//input[@type='file']    C:\\Users\\Mostafa\\Downloads\\Compressed\\properties\\8\\1.jpg
  sleep    5s
  click element    xpath=//button[@class='btn wizard-footer-right btn-primary btn-lg']
  sleep    3s
  click element    xpath=//button[@class='btn wizard-footer-right finish-button btn-primary btn-lg']
  sleep    15s
Add Real Estate of type office
  wait until page contains    نوع العقار
  click element    xpath=//input[@value='60115e7a4e7d6312bebf04ff']
  click element    xpath=//input[@value='600ea695e3672a38437e635c']
  wait until element is visible     id=price
  input password    id=price    2000
  wait until element is visible     id=area
  input password    id=area     150
  sleep    2s
  wait until page contains element   xpath=//input[@name='payType'and@value='1']
  click element    xpath=//input[@name='payType'and@value='1']
  wait until element is visible    xpath=//button[@class='btn wizard-footer-right btn-primary btn-lg']
  click element    xpath=//button[@class='btn wizard-footer-right btn-primary btn-lg']
  wait until element is visible    xpath=//input[@class='autosuggest__input form-control pac-target-input']
  input text        xpath=//input[@class='autosuggest__input form-control pac-target-input']  الرياض
  sleep    3s
  click element    xpath=//span[@class='pac-matched'][contains(.,'الرياض')]
  sleep    2s
  click element   xpath=//button[@class='btn wizard-footer-right btn-primary btn-lg']
  sleep    3s
  input password    id=age  15
  sleep    1s
  input password    id=floor  12
  sleep    1s
  input password    id=numberOfLivingRoom  13
  sleep    1s
  input password    id=numberOfBathRoom   11
  sleep    1s
  input password    id=notes  this is the Property is very ggod and containa a lot of Features like is very big and the design it is awesome
  sleep    1s
  input password    id=numberOfRooms   10
  sleep    1s
  click element    xpath=//button[@class='btn wizard-footer-right btn-primary btn-lg']
  sleep    3s
  choose file    //input[@id='images']  C:\\Users\\Mostafa\\Downloads\\Compressed\\properties\\8\\1.jpg
  sleep    10s
  click element    xpath=//button[@class='btn wizard-footer-right btn-primary btn-lg']
  sleep    3s
  click element    xpath=//a[@class='button add-floorplans-submit-item']
  sleep    3s
  choose file    xpath=//div[@class='fm-inner-container']//input[@type='file']    C:\\Users\\Mostafa\\Downloads\\Compressed\\properties\\8\\1.jpg
  sleep    5s
  click element    xpath=//button[@class='btn wizard-footer-right btn-primary btn-lg']
  sleep    3s
  click element    xpath=//button[@class='btn wizard-footer-right finish-button btn-primary btn-lg']
  sleep    15s





