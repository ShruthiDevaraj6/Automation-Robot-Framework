*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://demoqa.com/buttons


*** Test Cases ***
Mouse Operations
    open browser  ${url}    ${browser}
    maximize browser window
    open context menu   xpath://button[@id='rightClickBtn']     #perform right click
    page should contain  You have done a right click
    sleep  2

    double click element  xpath://button[@id='doubleClickBtn']   #perform double click
    page should contain  You have done a double click
    sleep  2

    go to  https://demoqa.com/droppable         #perform drag and drop
    maximize browser window
    drag and drop  xpath://div[@id='draggable']     //div[@id='simpleDropContainer']//div[@id='droppable']
    sleep  2
    close all browsers

*** Keywords ***


