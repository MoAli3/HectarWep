*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Verify that user can't add Property to Favorite without log in
  click element    xpath=//div[@class='listings-container-inner content-column']//div[1]//div[2]//div[2]//a[1]//span[1]
  sleep    2s
  element text should be      xpath=//div[@class='toasted toasted-primary default']   لابد من تسجيل الدخول أولاً
  sleep    1s
Verify that user can't add like Property without log in
  click element    xpath=//body/div[@id='wrapper']/div[@class='online-connection']/div/div[@class='fs-container is-properties-view']/div[@class='fs-inner-container properties-column']/div[@class='fs-content']/div[@class='listings-container-wrap results-view']/div[@class='listings-container-inner content-column']/div[@id='listings-list']/div[1]/div[1]
  sleep    3s
  click element    xpath=//body/div/div[@class='online-connection']/div/div/div[@class='fs-container is-properties-view']/div[@class='fs-inner-container properties-column']/div[@class='fs-content']/div[@class='preview-area-wrap']/div[@class='preview-area']/div[@class='default-img']/div[@class='property-meta top-meta']/span[@class='meta-item likes-icon']/div[@class='VueStar']/div[@class='VueStar__ground']/div[@class='VueStar__icon']/a[1]
  sleep    1s
   element text should be      xpath=//div[@class='toasted toasted-primary default']   لابد من تسجيل الدخول أولاً
   click element    xpath=//button[@class='Rate__star'][1]
   sleep    1s
   scroll element into view    xpath=//div[@class='custom-control custom-checkbox b-custom-control-lg'][1]
   click element    xpath=//div[@class='custom-control custom-checkbox b-custom-control-lg'][1]
   sleep    1s
   click element    xpath=//button[@class='btn btn-primary mt-4']
   sleep    1s
   element text should be      xpath=//div[@class='toasted toasted-primary default']   لابد من تسجيل الدخول أولاً
   sleep    3s
   click element    xpath=//a[@class='ownerRoute']
   sleep    3s
  get count    //span[@class='num font-14']  5

