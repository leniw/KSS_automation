*** Settings ***
Documentation    Suite description
Library  Selenium2Library
Library  BuiltIn
Resource  allmyVars.robot


*** Variables ***
${BROWSER}  chrome

*** Keywords ***
Begin Web Test
    Open Browser   about:blank    ${BROWSER}
    Maximize Browser Window

End Web Test
    Close Browser

Insert Testing Data
    Log   Do something before suite starts

Cleanup Testing Data
    Log   Do something after suite is done