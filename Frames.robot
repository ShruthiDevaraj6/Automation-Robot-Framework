*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://www.hyrtutorials.com/p/frames-practice.html

*** Test Cases ***
Handling Frames
    open browser  ${url}    ${browser}
    select frame  frm1   #give name
    select from list by label  selectnav1     -- XPath
    unselect frame
    sleep  3

    select frame  frm2
    select from list by label  selectnav1   - Dot Net
    unselect frame
    sleep  3

    select frame  frm3
    select from list by label  selectnav1   - Dot Net
    unselect frame
    sleep  3

    select frame
    close browser

*** Keywords ***

