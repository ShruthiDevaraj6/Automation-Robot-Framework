*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://demowebshop.tricentis.com/register

*** Test Cases ***
Registeration
     ${speed}=  get selenium speed
     log to console     ${speed}
    open browser  ${url}    ${browser}
    maximize browser window
    set selenium speed  2 seconds
    select radio button  Gender     F
    input text  name:FirstName  Syra
    input text  name:LastName   Shetty
    input text  name:Email  d.shruthi1@gmail.com
    input text  name:Password   finland@1234
    input text  name:ConfirmPassword    finland@1234
    ${speed}=  get selenium speed
     log to console     ${speed}
    close browser

*** Keywords ***

