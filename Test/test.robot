*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***

verify file ubload
   open browser      http://dev.devstagging.online/    chrome
   sleep    6s
  click element  //a[contains(text(),'تسجيل دخول/ اشتراك')]
  sleep    2s
  input password    name=telephone   0500000000
  sleep    1s
  input password   id=password login-password   123456
  sleep    1s
  click element    xpath=//button[contains(@class,'btn button margin-bottom-0 w-100 bg-blue btn-primary')]
  sleep    2s
  click element    //label[@class='h4'][2]
   sleep    3s
  input text    xpath=//input[@class='form-control pac-target-input']  الرياض
  sleep    3s
  click element    xpath=//span[@class='pac-matched'][contains(.,'الرياض')]
  sleep    3s
  click element    xpath=//button[contains(@type,'submit')]
  sleep    5s
  click element    //body/div[@id='wrapper']/div[@class='online-connection']/div/div[@class='fs-container is-properties-view']/div[@class='fs-inner-container properties-column']/div[@class='fs-content']/div[@class='listings-container-wrap results-view']/div[@class='listings-container-inner content-column']/div[@id='listings-list']/div[2]/div[1]
  sleep    5s
  click element    //span[@title='اضف للمفضلة']//span[@class='hi-bookmark2-o icon']
  sleep    1s
  #element text should be      xpath=//div[@class='toasted toasted-primary default']   تم إضافة العقار لمفضلتك!ً
  sleep    2s
  click element    //a[@class='hi-thumbs-o-up'][1]
  sleep    1s
   click element    xpath=//button[@class='Rate__star'][1]
   sleep    1s
   scroll element into view    xpath=//div[@class='custom-control custom-checkbox b-custom-control-lg'][1]
   click element    xpath=//div[@class='custom-control custom-checkbox b-custom-control-lg'][1]
   sleep    1s
   click element    xpath=//button[@class='btn btn-primary mt-4']
   page should contain element    //div[@class='toasted toasted-primary success']   تم إرسال التقييم .. شكراً لك
   sleep    1s
   reload page
   sleep    5s

