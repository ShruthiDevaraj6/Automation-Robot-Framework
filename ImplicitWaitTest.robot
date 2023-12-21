*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://demowebshop.tricentis.com/register

*** Test Cases ***
Registeration
    open browser  ${url}    ${browser}
    maximize browser window
    ${implicittime}=    get selenium implicit wait
    log to console  ${implicittime}

    set selenium implicit wait  5 seconds    #give incorrect first name and wait in every statement

    ${implicittime}=    get selenium implicit wait
    log to console  ${implicittime}

    select radio button  Gender     F
    input text  name:FirstName  Syra
    input text  name:LastName   Shetty
    input text  name:Email  d.shruthi1@gmail.com
    input text  name:Password   finland@1234
    input text  name:ConfirmPassword    finland@1234
    close browser

*** Keywords ***

