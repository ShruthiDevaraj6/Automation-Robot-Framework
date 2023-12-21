*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/resources.robot


*** Variables ***
${browser}  chrome
${url}  https://testautomationpractice.blogspot.com/

*** Test Cases ***
Table validations
    open browser  ${url}   ${browser}
    maximize browser window
    ${rows}=   get element count    xpath://table[@name='BookTable']/tbody/tr
    ${cols}=   get element count  xpath://table[@name='BookTable']/tbody/tr[1]/th
    log to console  ${rows}
    log to console  ${cols}

    ${data}=  get text   xpath://table[@name='BookTable']/tbody/tr[5]/td[1]
    log to console  ${data}

    table column should contain  //table[@name='BookTable']     2       Author
    table row should contain  //table[@name='BookTable']        4   Learn JS
    table cell should contain  //table[@name='BookTable']       4   2   Animesh
    table header should contain  //table[@name='BookTable']     Subject
    close browser





