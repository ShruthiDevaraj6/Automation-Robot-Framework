*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url1}  https://www.google.com/
${url2}     https://robotframework.org/

*** Test Cases ***
Multiple Browsers
    open browser  ${url1}    ${browser}
    maximize browser window

    sleep  3
    open browser  ${url2}    ${browser}
    maximize browser window

    switch browser  1
    ${title1}=   get title
    log to console  ${title1}

    switch browser  2
    ${title2}=   get title
    log to console  ${title2}
    sleep   2
    close all browsers

*** Keywords ***

