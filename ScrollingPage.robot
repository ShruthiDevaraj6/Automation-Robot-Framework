*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/resources.robot


*** Variables ***
${browser}  chrome
${url}  https://omayo.blogspot.com/

*** Test Cases ***
Scrolling
    open browser  ${url}    ${browser}
#    execute javascript  window.scrollTo(0,2500)
#    scroll element into view  xpath://input[@id='alert2']
     execute javascript  window.scrollTo(0,document.body.scrollHeight)  #till end of the page
     sleep  3
     execute javascript  window.scrollTo(0,-document.body.scrollHeight)  #starting point
     sleep  4

    close browser





