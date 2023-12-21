*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url1}  https://kitchen.applitools.com/ingredients/links
${url2}     https://kitchen.applitools.com/ingredients/table

*** Test Cases ***
Tabs
    open browser  ${url1}    ${browser}
    maximize browser window
    click element  xpath://a[@id='button-the-kitchen-table']

    ${title1}=   get title
    log to console  ${title1}

    go to  ${url2}
    ${title2}=   get title
    log to console  ${title2}
    sleep   2

    go back
    ${title3}=   get title
    log to console  ${title3}
    close all browsers

*** Keywords ***

