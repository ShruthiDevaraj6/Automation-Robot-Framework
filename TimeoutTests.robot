*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://demowebshop.tricentis.com/register

*** Test Cases ***
Registeration
    open browser  ${url}    ${browser}
    maximize browser window
    ${time}=    get selenium timeout
    log to console  ${time}
    set selenium timeout  10 seconds    #since default timeout is 5 secs, you can set the timeout here
    wait until page contains  Register12333  #max wait time is 5 seconds

    select radio button  Gender     F
    input text  name:FirstName  Syra
    input text  name:LastName   Shetty
    input text  name:Email  d.shruthi1@gmail.com
    input text  name:Password   finland@1234
    input text  name:ConfirmPassword    finland@1234
    close browser

*** Keywords ***

