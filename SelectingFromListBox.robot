*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://omayo.blogspot.com/

*** Test Cases ***
Listbox
    open browser  ${url}    ${browser}
    maximize browser window
    select from list by label  multiselect1    Swift
    sleep  3
    select from list by value  multiselect1    Hyundaix
    sleep   3
    unselect from list by value  multiselect1    swiftx
    close browser

*** Keywords ***

