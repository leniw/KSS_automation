# Page object for the login page
# e.g.
# https://schoolleaders.uat-keylabs.com/login/

*** Settings ***
Library  Selenium2Library
Library  BuiltIn

*** Variables ***
# naming convention: PO_Element_Description
${LOGIN_LINK_TOP}    //*[@id="nav-account"]/ul/li[4]/a
${LOGIN_ELEMENT_LABEL}     //*[@id="content"]/div/div/div[1]/div[1]/h1

*** Keywords ***
Load login page
    Click Link   ${LOGIN_LINK_TOP}

Verify page Load
    Wait Until Page Contains Element    ${LOGIN_ELEMENT_LABEL}

Enter and submit user details
    Log to Console    To Do

Verify user is logged in
    Log to Console    To Do