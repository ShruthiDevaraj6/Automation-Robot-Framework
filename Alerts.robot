*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://testautomationpractice.blogspot.com/

*** Test Cases ***
Handling alerts
    open browser  ${url}    ${browser}
    click element   xpath://button[normalize-space()='Confirm Box']
    sleep  3
#    handle alert  accept
#    handle alert  dismiss
#    handle alert  leave     #leaves it as it is
#    alert should be present  Press a button!
    alert should not be present  Press a button!  #fails-neagtive condition
    close browser

*** Keywords ***

