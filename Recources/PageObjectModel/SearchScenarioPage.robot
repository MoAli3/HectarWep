*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
choose Property From Search result
  click element     xpath=//body/div[@id='wrapper']/div[@class='online-connection']/div/div[@class='fs-container is-properties-view']/div[@class='fs-inner-container properties-column']/div[@class='fs-content']/div[@class='listings-container-wrap results-view']/div[@class='listings-container-inner content-column']/div[@id='listings-list']/div[1]
  click element    xpath=//span[@title='اضف للمفضلة']//span[@class='hi-bookmark2-o icon']
  click element    xpath=//div[@class='VueStar is-active']//a[@class='hi-thumbs-o-up']
  click element    xpath=//body/div[@id='wrapper']/div[@class='online-connection']/div/div/div[@class='fs-container is-properties-view']/div[@class='fs-inner-container properties-column']/div[@id='property-info-area']/div[@id='single-content']/div[@class='single-content-inner']/div[@class='preview-data-area row']/div[@class='col-sm-5 sidebar-wrapper']/div[@class='sidebar']/div[@class='agent-widget']/div[@class='agent-details']/h4/a[1]

