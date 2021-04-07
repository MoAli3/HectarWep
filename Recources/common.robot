*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${env}  stage
&{url}  stage=https://dev.devstagging.online/   Production=https://hectar.io/
*** Keywords ***
Begin Test
    open browser   ${url.${env}}  chrome
    maximize browser window
  # wait until page contains    ابدأ رحلة البحث عن عقارك…




End Test
   close browser
