*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://www.saucedemo.com/

*** Test Cases ***
TestingInputBox
    open browser  ${url}    ${browser}
    maximize browser window
    title should be     Swag Labs
    ${"email"}      set variable    id:user-name
    element should be visible       ${"email"}
    element should be enabled       ${"email"}
    input text  ${"email"}  standard_user
    sleep  5
    clear element text  ${"email"}
    sleep  3
    close browser

*** Keywords ***

