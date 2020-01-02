# Page object for the homepage
# UAT: https://schoolleaders.uat-keylabs.com/
# PROD: https://schoolleaders.thekeysupport.com/
*** Settings ***
Library  Selenium2Library
Library  BuiltIn

*** Variables ***
# naming convention: PO_Element_Description
${HOMEPAGE_TEXT_TITLE}   The Key for School Leaders
${HOMEPAGE_TOPLINK_REGISTRATION}

*** Keywords ***
Loadme
    Go To    ${URL}
    Title Should Be    ${HOMEPAGE_TEXT_TITLE}
    #Sleep   3s

Go To Reg Page via Top Link
    Click Element  xpath=//a[contains(@href, 'https://schoolleaders.uat-keylabs.com/register/free/?marker=logged-out-hp')]
    Wait Until Page Contains  Complete the form below to register.

#    //*[@id="website"]/div/div[1]/div[2]/div/div[2]/div/ul/li[2]/a
#
#    //*[@id="nav-account"]/ul/li[3]/a
#
#    //*[@id="nav-account"]/ul/li[3]