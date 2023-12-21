*** Settings ***
Library  SeleniumLibrary


*** Variables ***

*** Test Cases ***
Registeration
    open browser  https://demowebshop.tricentis.com/register    headlesschrome
    maximize browser window

    open browser  https://demowebshop.tricentis.com/register    headlesschrome
    maximize browser window

    close all browsers




*** Keywords ***

