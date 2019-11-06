*** Settings ***
Library  Selenium2Library
Library  BuiltIn


*** Keywords ***
Go To Page
    Click Element  xpath=//a[contains(@href, 'https://schoolleaders.uat-keylabs.com/register/free/?marker=logged-out-hp')]
    Wait Until Page Contains  Complete the form below to register.

Choose My School
    Input Text  //*[@id="newPostcode"]    ${POSTCODE}
    Sleep   3s
    Click Button  //*[@id="content"]/div/div[1]/div/div[1]/div[2]/form/div[2]/div[1]/button
    Sleep  3s
    Click Link  xpath=//div[2]/ul/li/a
    #Click Link  css=.dynamic-link
    #Click Link  xpath=//a[contains(text(),'TTO Check Steps Preview')]
    #Click Link  xpath=//div[@id='popover830246']/div[2]/ul/li/a
    #Click Link  xpath=//a[contains(.,'TTO Check Steps Preview')]
    Wait Until Page Contains  Your school
    Sleep  3s
    #End Web Test

Fill My Form
    Input Text  id=registerEmail    @{REGDATA}[0]
    #Sleep   3s
    Input Text  id=registerFirstname    @{REGDATA}[1]
    #Sleep   3s
    Input Text  id=registerLastname    @{REGDATA}[2]
    #Sleep   3s
    Input Text  id=registerPassword    @{REGDATA}[3]
    #Sleep   3s
    Click Button  //*[@id="content"]/div/div[1]/div/div[1]/div[2]/form/div[4]/div/button
    #Sleep  3s
    Click Button  xpath=//button[@type='submit']
    Wait Until Page Contains  Complete your profile
    Sleep  3s

Complete My Profile

