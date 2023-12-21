*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://demowebshop.tricentis.com/login

*** Test Cases ***
LoginTest
    open browser  ${url}    ${browser}
    sleep   3
    LoginToApplication
    close browser

*** Keywords ***
LoginToApplication
    input text  id:Email  devarajshruthi6@gmail.com
    input text  id:Password   finland@123
    click element  //input[@value='Log in']


