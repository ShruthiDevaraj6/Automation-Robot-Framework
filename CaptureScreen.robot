*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  headlesschrome
${url}  https://kitchen.applitools.com/ingredients/links


*** Test Cases ***
Capture
    open browser  ${url}    ${browser}
    maximize browser window

    capture element screenshot  xpath://h1[normalize-space()='Links']     C:/Users/dshru/PycharmProjects/AutomationProject/element.png
    capture page screenshot  C:/Users/dshru/PycharmProjects/AutomationProject/page.png

    close all browsers

*** Keywords ***

