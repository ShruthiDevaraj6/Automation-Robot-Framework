*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/resources.robot


*** Variables ***
${browser}  chrome
${url}  https://demowebshop.tricentis.com/register

*** Test Cases ***
User Keywords
    ${PageTitle}=   launchBrowser   ${url}    ${browser}
    log to console   ${PageTitle}
    log   ${PageTitle}
    input text  name:FirstName  Syra
    input text  name:LastName   Shetty
    input text  name:Email  d.shruthi1@gmail.com
    input text  name:Password   finland@1234
    input text  name:ConfirmPassword    finland@1234
    close browser





