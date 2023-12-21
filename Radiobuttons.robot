*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://omayo.blogspot.com/

*** Test Cases ***
Testing Radio Buttons and checkboxes
    open browser  ${url}    ${browser}
    maximize browser window

#    Selecting radio buttons
    select radio button     gender      male
    sleep   3
    select radio button  vehicle    Bicycle

#    Selecting checkboxes
    unselect checkbox   orange
    select checkbox    blue
    sleep  3
    unselect checkbox      Book
    select checkbox        Laptop
    close browser

*** Keywords ***

