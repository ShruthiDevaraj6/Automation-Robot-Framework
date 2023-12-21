*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://www.calculator.net/calorie-calculator.html

*** Test Cases ***
Handling dropdowns and lists
    open browser  ${url}    ${browser}
    maximize browser window
    select from list by label  cactivity    Sedentary: little or no exercise
    sleep  3
    select from list by index  cactivity    4
    sleep   3
    select from list by value  cactivity    1
    close browser

*** Keywords ***

