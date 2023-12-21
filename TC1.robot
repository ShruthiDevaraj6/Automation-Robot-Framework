*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://www.saucedemo.com/

*** Test Cases ***
LoginTest
    open browser  ${url}    ${browser}
    LoginToApplication
    close browser

*** Keywords ***
LoginToApplication
    input text  id:user-name  standard_user
    input text  id:password  secret_sauce
    click element  id:login-button


