*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/resources.robot


*** Variables ***
${browser}  chrome
${url}  https://kitchen.applitools.com/ingredients/links


*** Test Cases ***
Get All Links Text
    open browser  ${url}    ${browser}
    maximize browser window
    ${AllLinksCount}=   get element count  xpath://a
    log to console   ${AllLinksCount}

    @{LinkItems}    create list
    : FOR   ${i}    IN RANGE   1   ${AllLinksCount}+1
    \   ${linkText}=  get text  xpath:(//a)[${i}]
    \   log to console  ${linkText}
    close browser





