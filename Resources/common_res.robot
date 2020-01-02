*** Settings ***
Documentation    Suite description
Library  Selenium2Library
Library  BuiltIn
Library  OperatingSystem
Library  DateTime
Resource  allmyVars.robot


*** Variables ***


*** Keywords ***
Begin Web Test
    Open Browser   about:blank    ${BROWSER}
    Maximize Browser Window
    Insert Dynamic Testing Data


End Web Test
    Close Browser

Insert Dynamic Testing Data
    ${d} =   Get Current Date  result_format=%m%d
    ${t} =   Get Time  format=min
    ${USERNAME_DYNAMIC}  Set Variable   ${d}${t}CS@thekeysupport.com
    Set Suite Variable   ${USERNAME_DYNAMIC}
    Log to Console  ${USERNAME_DYNAMIC}